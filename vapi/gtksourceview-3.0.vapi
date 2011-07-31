/* gtksourceview-3.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "GtkSource", lower_case_cprefix = "gtk_source_", gir_namespace = "GtkSource", gir_version = "3.0")]
namespace GtkSource {
	[CCode (cheader_filename = "gtksourceview/gtksourceview.h")]
	public class Buffer : Gtk.TextBuffer {
		[CCode (has_construct_function = false)]
		public Buffer (Gtk.TextTagTable? table);
		public bool backward_iter_to_source_mark (Gtk.TextIter iter, string? category);
		public void begin_not_undoable_action ();
		public unowned GtkSource.Mark create_source_mark (string? name, string category, Gtk.TextIter where);
		public void end_not_undoable_action ();
		public void ensure_highlight (Gtk.TextIter start, Gtk.TextIter end);
		public bool forward_iter_to_source_mark (Gtk.TextIter iter, string? category);
		[CCode (array_length = false, array_null_terminated = true)]
		public string[] get_context_classes_at_iter (Gtk.TextIter iter);
		public bool get_highlight_matching_brackets ();
		public bool get_highlight_syntax ();
		public unowned GtkSource.Language get_language ();
		public int get_max_undo_levels ();
		public GLib.SList<weak GtkSource.Mark> get_source_marks_at_iter (Gtk.TextIter iter, string? category);
		public GLib.SList<weak GtkSource.Mark> get_source_marks_at_line (int line, string? category);
		public unowned GtkSource.StyleScheme get_style_scheme ();
		public unowned GtkSource.UndoManager get_undo_manager ();
		public bool iter_backward_to_context_class_toggle (Gtk.TextIter iter, string context_class);
		public bool iter_forward_to_context_class_toggle (Gtk.TextIter iter, string context_class);
		public bool iter_has_context_class (Gtk.TextIter iter, string context_class);
		public void remove_source_marks (Gtk.TextIter start, Gtk.TextIter end, string? category);
		public void set_highlight_matching_brackets (bool highlight);
		public void set_highlight_syntax (bool highlight);
		public void set_language (GtkSource.Language? language);
		public void set_max_undo_levels (int max_undo_levels);
		public void set_style_scheme (GtkSource.StyleScheme? scheme);
		public void set_undo_manager (GtkSource.UndoManager? manager);
		[CCode (has_construct_function = false)]
		public Buffer.with_language (GtkSource.Language language);
		[NoAccessorMethod]
		public bool can_redo { get; }
		[NoAccessorMethod]
		public bool can_undo { get; }
		public bool highlight_matching_brackets { get; set; }
		public bool highlight_syntax { get; set; }
		public GtkSource.Language language { get; set; }
		public int max_undo_levels { get; set; }
		public GtkSource.StyleScheme style_scheme { get; set; }
		public GtkSource.UndoManager undo_manager { get; set construct; }
		public virtual signal void bracket_matched (Gtk.TextIter iter, GtkSource.BracketMatchType state);
		public signal void highlight_updated (Gtk.TextIter object, Gtk.TextIter p0);
		[HasEmitter]
		public virtual signal void redo ();
		public signal void source_mark_updated (Gtk.TextMark object);
		[HasEmitter]
		public virtual signal void undo ();
	}
	[CCode (cheader_filename = "gtksourceview/gtksourceview.h")]
	public class Completion : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Completion ();
		public bool add_provider (GtkSource.CompletionProvider provider) throws GLib.Error;
		public void block_interactive ();
		public GtkSource.CompletionContext create_context (Gtk.TextIter? position);
		public static GLib.Quark error_quark ();
		public unowned GtkSource.CompletionInfo get_info_window ();
		public unowned GLib.List<weak GtkSource.CompletionProvider> get_providers ();
		public unowned GtkSource.View get_view ();
		public void move_window (Gtk.TextIter iter);
		[NoWrapper]
		public virtual bool proposal_activated (GtkSource.CompletionProvider provider, GtkSource.CompletionProposal proposal);
		public bool remove_provider (GtkSource.CompletionProvider provider) throws GLib.Error;
		public void unblock_interactive ();
		[NoAccessorMethod]
		public uint accelerators { get; set construct; }
		[NoAccessorMethod]
		public uint auto_complete_delay { get; set construct; }
		[NoAccessorMethod]
		public uint proposal_page_size { get; set construct; }
		[NoAccessorMethod]
		public uint provider_page_size { get; set construct; }
		[NoAccessorMethod]
		public bool remember_info_visibility { get; set construct; }
		[NoAccessorMethod]
		public bool select_on_show { get; set construct; }
		[NoAccessorMethod]
		public bool show_headers { get; set construct; }
		[NoAccessorMethod]
		public bool show_icons { get; set construct; }
		public GtkSource.View view { get; construct; }
		public virtual signal void activate_proposal ();
		[HasEmitter]
		public virtual signal void hide ();
		public virtual signal void move_cursor (Gtk.ScrollStep step, int num);
		public virtual signal void move_page (Gtk.ScrollStep step, int num);
		public virtual signal void populate_context (GtkSource.CompletionContext context);
		[HasEmitter]
		public virtual signal void show ();
	}
	[CCode (cheader_filename = "gtksourceview/gtksourceview.h")]
	public class CompletionContext : GLib.InitiallyUnowned {
		[CCode (has_construct_function = false)]
		protected CompletionContext ();
		public void add_proposals (GtkSource.CompletionProvider provider, GLib.List<weak GtkSource.CompletionProposal> proposals, bool finished);
		public GtkSource.CompletionActivation get_activation ();
		public void get_iter (out Gtk.TextIter iter);
		public GtkSource.CompletionActivation activation { get; set; }
		[NoAccessorMethod]
		public GtkSource.Completion completion { owned get; construct; }
		public Gtk.TextIter iter { get; set; }
		public virtual signal void cancelled ();
	}
	[CCode (cheader_filename = "gtksourceview/gtksourceview.h")]
	public class CompletionInfo : Gtk.Window, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false)]
		public CompletionInfo ();
		public unowned Gtk.Widget get_widget ();
		public void move_to_iter (Gtk.TextView view, Gtk.TextIter? iter);
		public void set_widget (Gtk.Widget? widget);
		public virtual signal void before_show ();
	}
	[CCode (cheader_filename = "gtksourceview/gtksourcecompletionitem.h")]
	public class CompletionItem : GLib.Object, GtkSource.CompletionProposal {
		[CCode (has_construct_function = false)]
		public CompletionItem (string label, string text, Gdk.Pixbuf? icon, string? info);
		[CCode (has_construct_function = false)]
		public CompletionItem.from_stock (string? label, string text, string stock, string? info);
		[CCode (has_construct_function = false)]
		public CompletionItem.with_markup (string markup, string text, Gdk.Pixbuf? icon, string? info);
		[NoAccessorMethod]
		public Gdk.Pixbuf icon { owned get; set; }
		[NoAccessorMethod]
		public string info { owned get; set; }
		[NoAccessorMethod]
		public string label { owned get; set; }
		[NoAccessorMethod]
		public string markup { owned get; set; }
		[NoAccessorMethod]
		public string text { owned get; set; }
	}
	[CCode (cheader_filename = "gtksourceview/gtksourceview.h")]
	public class CompletionWords : GLib.Object, GtkSource.CompletionProvider {
		[CCode (has_construct_function = false)]
		public CompletionWords (string? name, Gdk.Pixbuf? icon);
		public void register (Gtk.TextBuffer buffer);
		public void unregister (Gtk.TextBuffer buffer);
		[NoAccessorMethod]
		public Gdk.Pixbuf icon { owned get; set construct; }
		[NoAccessorMethod]
		public int interactive_delay { get; set construct; }
		[NoAccessorMethod]
		public uint minimum_word_size { get; set construct; }
		[NoAccessorMethod]
		public string name { owned get; set construct; }
		[NoAccessorMethod]
		public int priority { get; set construct; }
		[NoAccessorMethod]
		public uint proposals_batch_size { get; set construct; }
		[NoAccessorMethod]
		public uint scan_batch_size { get; set construct; }
	}
	[CCode (cheader_filename = "gtksourceview/gtksourceview.h")]
	public class Gutter : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Gutter ();
		public void get_padding (int xpad, int ypad);
		public unowned Gdk.Window get_window ();
		public bool insert (GtkSource.GutterRenderer renderer, int position);
		public void queue_draw ();
		public void remove (GtkSource.GutterRenderer renderer);
		public void reorder (GtkSource.GutterRenderer renderer, int position);
		public void set_padding (int xpad, int ypad);
		[NoAccessorMethod]
		public GtkSource.View view { owned get; construct; }
		[NoAccessorMethod]
		public Gtk.TextWindowType window_type { get; construct; }
		[NoAccessorMethod]
		public int xpad { get; set construct; }
		[NoAccessorMethod]
		public int ypad { get; set construct; }
	}
	[CCode (cheader_filename = "gtksourceview/gtksourceview.h")]
	public class GutterRenderer : GLib.InitiallyUnowned {
		[CCode (has_construct_function = false)]
		protected GutterRenderer ();
		public virtual void activate (Gtk.TextIter iter, Gdk.Rectangle area, Gdk.Event event);
		public virtual void begin (Cairo.Context cr, Gdk.Rectangle background_area, Gdk.Rectangle cell_area, Gtk.TextIter start, Gtk.TextIter end);
		[NoWrapper]
		public virtual void change_buffer (Gtk.TextBuffer old_buffer);
		[NoWrapper]
		public virtual void change_view (Gtk.TextView old_view);
		public virtual void draw (Cairo.Context cr, Gdk.Rectangle background_area, Gdk.Rectangle cell_area, Gtk.TextIter start, Gtk.TextIter end, GtkSource.GutterRendererState state);
		public virtual void end ();
		public void get_alignment (out unowned float? xalign, out unowned float? yalign);
		public GtkSource.GutterRendererAlignmentMode get_alignment_mode ();
		public bool get_background (out unowned Gdk.RGBA? color);
		public void get_padding (out unowned int? xpad, out unowned int? ypad);
		public int get_size ();
		public unowned Gtk.TextView get_view ();
		public bool get_visible ();
		public Gtk.TextWindowType get_window_type ();
		public virtual bool query_activatable (Gtk.TextIter iter, Gdk.Rectangle area, Gdk.Event event);
		public virtual bool query_tooltip (Gtk.TextIter iter, Gdk.Rectangle area, int x, int y, Gtk.Tooltip tooltip);
		public void set_alignment (float xalign, float yalign);
		public void set_alignment_mode (GtkSource.GutterRendererAlignmentMode mode);
		public void set_background (Gdk.RGBA? color);
		public void set_padding (int xpad, int ypad);
		public void set_size (int size);
		public void set_visible (bool visible);
		public GtkSource.GutterRendererAlignmentMode alignment_mode { get; set construct; }
		[NoAccessorMethod]
		public Gdk.RGBA background_rgba { get; set; }
		[NoAccessorMethod]
		public bool background_set { get; set construct; }
		public int size { get; set construct; }
		public Gtk.TextView view { get; }
		public bool visible { get; set construct; }
		public Gtk.TextWindowType window_type { get; }
		[NoAccessorMethod]
		public float xalign { get; set construct; }
		[NoAccessorMethod]
		public int xpad { get; set construct; }
		[NoAccessorMethod]
		public float yalign { get; set construct; }
		[NoAccessorMethod]
		public int ypad { get; set construct; }
		[HasEmitter]
		public virtual signal void query_data (Gtk.TextIter start, Gtk.TextIter end, GtkSource.GutterRendererState state);
		[HasEmitter]
		public virtual signal void queue_draw ();
	}
	[CCode (cheader_filename = "gtksourceview/gtksourceview.h")]
	public class GutterRendererPixbuf : GtkSource.GutterRenderer {
		[CCode (type = "GtkSourceGutterRenderer*", has_construct_function = false)]
		public GutterRendererPixbuf ();
		public unowned GLib.Icon get_gicon ();
		public unowned string get_icon_name ();
		public unowned Gdk.Pixbuf get_pixbuf ();
		public unowned string get_stock_id ();
		public void set_gicon (GLib.Icon icon);
		public void set_icon_name (string icon_name);
		public void set_pixbuf (Gdk.Pixbuf pixbuf);
		public void set_stock_id (string stock_id);
		public GLib.Icon gicon { get; set; }
		public string icon_name { get; set; }
		public Gdk.Pixbuf pixbuf { get; set; }
		public string stock_id { get; set; }
	}
	[CCode (cheader_filename = "gtksourceview/gtksourceview.h")]
	public class GutterRendererText : GtkSource.GutterRenderer {
		[CCode (type = "GtkSourceGutterRenderer*", has_construct_function = false)]
		public GutterRendererText ();
		public void measure (string text, int width, int height);
		public void measure_markup (string markup, int width, int height);
		public void set_markup (string markup, int length);
		public void set_text (string text, int length);
		[NoAccessorMethod]
		public string markup { owned get; set construct; }
		[NoAccessorMethod]
		public string text { owned get; set construct; }
	}
	[CCode (cheader_filename = "gtksourceview/gtksourceview.h")]
	public class Language : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Language ();
		[CCode (array_length = false, array_null_terminated = true)]
		public string[] get_globs ();
		public bool get_hidden ();
		public unowned string get_id ();
		public unowned string get_metadata (string name);
		[CCode (array_length = false, array_null_terminated = true)]
		public string[] get_mime_types ();
		public unowned string get_name ();
		public unowned string get_section ();
		[CCode (array_length = false, array_null_terminated = true)]
		public string[] get_style_ids ();
		public unowned string get_style_name (string style_id);
		public bool hidden { get; }
		public string id { get; }
		public string name { get; }
		public string section { get; }
	}
	[CCode (cheader_filename = "gtksourceview/gtksourcelanguagemanager.h")]
	public class LanguageManager : GLib.Object {
		[CCode (has_construct_function = false)]
		public LanguageManager ();
		public static unowned GtkSource.LanguageManager get_default ();
		public unowned GtkSource.Language get_language (string id);
		[CCode (array_length = false, array_null_terminated = true)]
		public unowned string[] get_language_ids ();
		[CCode (array_length = false, array_null_terminated = true)]
		public unowned string[] get_search_path ();
		public unowned GtkSource.Language guess_language (string? filename, string? content_type);
		public void set_search_path ([CCode (array_length = false, array_null_terminated = true)] string[]? dirs);
		public string[] language_ids { get; }
		public string[] search_path { get; set; }
	}
	[CCode (cheader_filename = "gtksourceview/gtksourceview.h")]
	public class Mark : Gtk.TextMark {
		[CCode (has_construct_function = false)]
		public Mark (string name, string category);
		public unowned string get_category ();
		public unowned GtkSource.Mark next (string? category);
		public unowned GtkSource.Mark prev (string category);
		public string category { get; construct; }
	}
	[CCode (cheader_filename = "gtksourceview/gtksourceview.h")]
	public class MarkAttributes : GLib.Object {
		[CCode (has_construct_function = false)]
		public MarkAttributes ();
		public bool get_background (out Gdk.RGBA background);
		public unowned GLib.Icon get_gicon ();
		public unowned string get_icon_name ();
		public unowned Gdk.Pixbuf get_pixbuf ();
		public unowned string get_stock_id ();
		public string get_tooltip_markup (GtkSource.Mark mark);
		public string get_tooltip_text (GtkSource.Mark mark);
		public unowned Gdk.Pixbuf render_icon (Gtk.Widget widget, int size);
		public void set_background (Gdk.RGBA background);
		public void set_gicon (GLib.Icon gicon);
		public void set_icon_name (string icon_name);
		public void set_pixbuf (Gdk.Pixbuf pixbuf);
		public void set_stock_id (string stock_id);
		public Gdk.RGBA background { get; set; }
		public GLib.Icon gicon { get; set; }
		public string icon_name { get; set; }
		public Gdk.Pixbuf pixbuf { get; set; }
		public string stock_id { get; set; }
		public signal string query_tooltip_markup (GtkSource.Mark object);
		public signal string query_tooltip_text (GtkSource.Mark object);
	}
	[CCode (cheader_filename = "gtksourceview/gtksourceview.h")]
	public class PrintCompositor : GLib.Object {
		[CCode (has_construct_function = false)]
		public PrintCompositor (GtkSource.Buffer buffer);
		public void draw_page (Gtk.PrintContext context, int page_nr);
		[CCode (has_construct_function = false)]
		public PrintCompositor.from_view (GtkSource.View view);
		public string get_body_font_name ();
		public double get_bottom_margin (Gtk.Unit unit);
		public unowned GtkSource.Buffer get_buffer ();
		public string get_footer_font_name ();
		public string get_header_font_name ();
		public bool get_highlight_syntax ();
		public double get_left_margin (Gtk.Unit unit);
		public string get_line_numbers_font_name ();
		public int get_n_pages ();
		public double get_pagination_progress ();
		public bool get_print_footer ();
		public bool get_print_header ();
		public uint get_print_line_numbers ();
		public double get_right_margin (Gtk.Unit unit);
		public uint get_tab_width ();
		public double get_top_margin (Gtk.Unit unit);
		public Gtk.WrapMode get_wrap_mode ();
		public bool paginate (Gtk.PrintContext context);
		public void set_body_font_name (string font_name);
		public void set_bottom_margin (double margin, Gtk.Unit unit);
		public void set_footer_font_name (string? font_name);
		public void set_footer_format (bool separator, string? left, string? center, string? right);
		public void set_header_font_name (string? font_name);
		public void set_header_format (bool separator, string? left, string? center, string? right);
		public void set_highlight_syntax (bool highlight);
		public void set_left_margin (double margin, Gtk.Unit unit);
		public void set_line_numbers_font_name (string? font_name);
		public void set_print_footer (bool print);
		public void set_print_header (bool print);
		public void set_print_line_numbers (uint interval);
		public void set_right_margin (double margin, Gtk.Unit unit);
		public void set_tab_width (uint width);
		public void set_top_margin (double margin, Gtk.Unit unit);
		public void set_wrap_mode (Gtk.WrapMode wrap_mode);
		public string body_font_name { owned get; set; }
		public GtkSource.Buffer buffer { get; construct; }
		public string footer_font_name { owned get; set; }
		public string header_font_name { owned get; set; }
		public bool highlight_syntax { get; set; }
		public string line_numbers_font_name { owned get; set; }
		public int n_pages { get; }
		public bool print_footer { get; set; }
		public bool print_header { get; set; }
		public uint print_line_numbers { get; set; }
		public uint tab_width { get; set; }
		public Gtk.WrapMode wrap_mode { get; set; }
	}
	[CCode (cheader_filename = "gtksourceview/gtksourcestyle.h")]
	public class Style : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Style ();
		public GtkSource.Style copy ();
		[NoAccessorMethod]
		public string background { owned get; construct; }
		[NoAccessorMethod]
		public bool background_set { get; construct; }
		[NoAccessorMethod]
		public bool bold { get; construct; }
		[NoAccessorMethod]
		public bool bold_set { get; construct; }
		[NoAccessorMethod]
		public string foreground { owned get; construct; }
		[NoAccessorMethod]
		public bool foreground_set { get; construct; }
		[NoAccessorMethod]
		public bool italic { get; construct; }
		[NoAccessorMethod]
		public bool italic_set { get; construct; }
		[NoAccessorMethod]
		public string line_background { owned get; construct; }
		[NoAccessorMethod]
		public bool line_background_set { get; construct; }
		[NoAccessorMethod]
		public bool strikethrough { get; construct; }
		[NoAccessorMethod]
		public bool strikethrough_set { get; construct; }
		[NoAccessorMethod]
		public bool underline { get; construct; }
		[NoAccessorMethod]
		public bool underline_set { get; construct; }
	}
	[CCode (cheader_filename = "gtksourceview/gtksourcestylescheme.h")]
	public class StyleScheme : GLib.Object {
		[CCode (has_construct_function = false)]
		protected StyleScheme ();
		[CCode (array_length = false, array_null_terminated = true)]
		public unowned string[] get_authors ();
		public unowned string get_description ();
		public unowned string get_filename ();
		public unowned string get_id ();
		public unowned string get_name ();
		public unowned GtkSource.Style get_style (string style_id);
		public string description { get; }
		public string filename { get; }
		public string id { get; construct; }
		public string name { get; }
	}
	[CCode (cheader_filename = "gtksourceview/gtksourcestyleschememanager.h")]
	public class StyleSchemeManager : GLib.Object {
		[CCode (has_construct_function = false)]
		public StyleSchemeManager ();
		public void append_search_path (string path);
		public void force_rescan ();
		public static unowned GtkSource.StyleSchemeManager get_default ();
		public unowned GtkSource.StyleScheme get_scheme (string scheme_id);
		[CCode (array_length = false, array_null_terminated = true)]
		public unowned string[] get_scheme_ids ();
		[CCode (array_length = false, array_null_terminated = true)]
		public unowned string[] get_search_path ();
		public void prepend_search_path (string path);
		public void set_search_path ([CCode (array_length = false, array_null_terminated = true)] string[]? path);
		public string[] scheme_ids { get; }
		public string[] search_path { get; set; }
	}
	[CCode (cheader_filename = "gtksourceview/gtksourceview.h")]
	public class View : Gtk.TextView, Atk.Implementor, Gtk.Buildable, Gtk.Scrollable {
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public View ();
		public bool get_auto_indent ();
		public unowned GtkSource.Completion get_completion ();
		public GtkSource.DrawSpacesFlags get_draw_spaces ();
		public unowned GtkSource.Gutter get_gutter (Gtk.TextWindowType window_type);
		public bool get_highlight_current_line ();
		public bool get_indent_on_tab ();
		public int get_indent_width ();
		public bool get_insert_spaces_instead_of_tabs ();
		public unowned GtkSource.MarkAttributes get_mark_attributes (string category, int priority);
		public uint get_right_margin_position ();
		public bool get_show_line_marks ();
		public bool get_show_line_numbers ();
		public bool get_show_right_margin ();
		public GtkSource.SmartHomeEndType get_smart_home_end ();
		public uint get_tab_width ();
		public uint get_visual_column (Gtk.TextIter iter);
		public void set_auto_indent (bool enable);
		public void set_draw_spaces (GtkSource.DrawSpacesFlags flags);
		public void set_highlight_current_line (bool hl);
		public void set_indent_on_tab (bool enable);
		public void set_indent_width (int width);
		public void set_insert_spaces_instead_of_tabs (bool enable);
		public void set_mark_attributes (string category, GtkSource.MarkAttributes attributes, int priority);
		public void set_right_margin_position (uint pos);
		public void set_show_line_marks (bool show);
		public void set_show_line_numbers (bool show);
		public void set_show_right_margin (bool show);
		public void set_smart_home_end (GtkSource.SmartHomeEndType smart_he);
		public void set_tab_width (uint width);
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public View.with_buffer (GtkSource.Buffer buffer);
		public bool auto_indent { get; set; }
		public GtkSource.Completion completion { get; }
		public GtkSource.DrawSpacesFlags draw_spaces { get; set; }
		public bool highlight_current_line { get; set; }
		public bool indent_on_tab { get; set; }
		public int indent_width { get; set; }
		public bool insert_spaces_instead_of_tabs { get; set; }
		public uint right_margin_position { get; set; }
		public bool show_line_marks { get; set; }
		public bool show_line_numbers { get; set; }
		public bool show_right_margin { get; set; }
		public GtkSource.SmartHomeEndType smart_home_end { get; set; }
		public uint tab_width { get; set; }
		public virtual signal void line_mark_activated (Gtk.TextIter iter, Gdk.Event event);
		public virtual signal void move_lines (bool copy, int step);
		public virtual signal void move_words (int step);
		public virtual signal void redo ();
		public virtual signal void show_completion ();
		public virtual signal void undo ();
	}
	[CCode (cheader_filename = "gtksourceview/gtksourceview.h")]
	public interface CompletionProposal : GLib.Object {
		public abstract bool equal (GtkSource.CompletionProposal other);
		public abstract unowned Gdk.Pixbuf get_icon ();
		public abstract string get_info ();
		public abstract string get_label ();
		public abstract string get_markup ();
		public abstract string get_text ();
		public abstract uint hash ();
		[HasEmitter]
		public virtual signal void changed ();
	}
	[CCode (cheader_filename = "gtksourceview/gtksourceview.h")]
	public interface CompletionProvider : GLib.Object {
		public abstract bool activate_proposal (GtkSource.CompletionProposal proposal, Gtk.TextIter iter);
		public abstract GtkSource.CompletionActivation get_activation ();
		public abstract unowned Gdk.Pixbuf get_icon ();
		public abstract unowned Gtk.Widget get_info_widget (GtkSource.CompletionProposal proposal);
		public abstract int get_interactive_delay ();
		public abstract string get_name ();
		public abstract int get_priority ();
		public abstract bool get_start_iter (GtkSource.CompletionContext context, GtkSource.CompletionProposal proposal, Gtk.TextIter iter);
		public abstract bool match (GtkSource.CompletionContext context);
		public abstract void populate (GtkSource.CompletionContext context);
		public abstract void update_info (GtkSource.CompletionProposal proposal, GtkSource.CompletionInfo info);
	}
	[CCode (cheader_filename = "gtksourceview/gtksourceview.h")]
	public interface UndoManager : GLib.Object {
		public abstract void begin_not_undoable_action ();
		public abstract bool can_redo ();
		public abstract bool can_undo ();
		public abstract void end_not_undoable_action ();
		public abstract void redo ();
		public abstract void undo ();
		[HasEmitter]
		public virtual signal void can_redo_changed ();
		[HasEmitter]
		public virtual signal void can_undo_changed ();
	}
	[CCode (cprefix = "GTK_SOURCE_BRACKET_MATCH_", cheader_filename = "gtksourceview/gtksourceview.h")]
	public enum BracketMatchType {
		NONE,
		OUT_OF_RANGE,
		NOT_FOUND,
		FOUND
	}
	[CCode (cprefix = "GTK_SOURCE_COMPLETION_ACTIVATION_", cheader_filename = "gtksourceview/gtksourceview.h")]
	[Flags]
	public enum CompletionActivation {
		NONE,
		INTERACTIVE,
		USER_REQUESTED
	}
	[CCode (cprefix = "GTK_SOURCE_DRAW_SPACES_", cheader_filename = "gtksourceview/gtksourceview.h")]
	[Flags]
	public enum DrawSpacesFlags {
		SPACE,
		TAB,
		NEWLINE,
		NBSP,
		LEADING,
		TEXT,
		TRAILING,
		ALL
	}
	[CCode (cprefix = "GTK_SOURCE_GUTTER_RENDERER_ALIGNMENT_MODE_", cheader_filename = "gtksourceview/gtksourceview.h")]
	public enum GutterRendererAlignmentMode {
		CELL,
		FIRST,
		LAST
	}
	[CCode (cprefix = "GTK_SOURCE_GUTTER_RENDERER_STATE_", cheader_filename = "gtksourceview/gtksourceview.h")]
	[Flags]
	public enum GutterRendererState {
		NORMAL,
		CURSOR,
		PRELIT,
		SELECTED
	}
	[CCode (cprefix = "GTK_SOURCE_SMART_HOME_END_", cheader_filename = "gtksourceview/gtksourceview.h")]
	public enum SmartHomeEndType {
		DISABLED,
		BEFORE,
		AFTER,
		ALWAYS
	}
	[CCode (cprefix = "GTK_SOURCE_VIEW_GUTTER_POSITION_", cheader_filename = "gtksourceview/gtksourceview.h")]
	public enum ViewGutterPosition {
		LINES,
		MARKS
	}
	[CCode (cprefix = "GTK_SOURCE_COMPLETION_ERROR_", cheader_filename = "gtksourceview/gtksourceview.h")]
	public errordomain CompletionError {
		ALREADY_BOUND,
		NOT_BOUND,
	}
	[CCode (cheader_filename = "gtksourceview/gtksourceview.h")]
	public const string COMPLETION_CAPABILITY_AUTOMATIC;
	[CCode (cheader_filename = "gtksourceview/gtksourceview.h")]
	public const string COMPLETION_CAPABILITY_INTERACTIVE;
}
