/* libgsf-1.vapi generated by vapigen, do not modify. */

namespace Gsf {
	[CCode (cheader_filename = "gsf/gsf-blob.h", type_id = "GSF_BLOB_TYPE")]
	public class Blob : GLib.Object {
		[CCode (has_construct_function = false)]
		public Blob (size_t size, void* data_to_copy) throws GLib.Error;
		public size_t get_size ();
		public void* peek_data ();
	}
	[CCode (cheader_filename = "gsf/gsf-clip-data.h", type_id = "GSF_CLIP_DATA_TYPE")]
	public class ClipData : GLib.Object {
		[CCode (has_construct_function = false)]
		public ClipData (Gsf.ClipFormat format, Gsf.Blob data_blob);
		public unowned Gsf.Blob get_data_blob ();
		public Gsf.ClipFormat get_format ();
		public Gsf.ClipFormatWindows get_windows_clipboard_format () throws GLib.Error;
		public void* peek_real_data (size_t ret_size) throws GLib.Error;
	}
	[CCode (cheader_filename = "gsf/gsf-doc-meta-data.h", type_id = "GSF_DOC_META_DATA_TYPE")]
	public class DocMetaData : GLib.Object {
		[CCode (has_construct_function = false)]
		public DocMetaData ();
		public void @foreach (GLib.HFunc func);
		public void insert (string name, GLib.Value value);
		public unowned Gsf.DocProp? lookup (string name);
		public void remove (string name);
		public size_t size ();
		public unowned Gsf.DocProp? steal (string name);
		public void store (Gsf.DocProp prop);
	}
	[CCode (cheader_filename = "gsf/gsf-doc-meta-data.h")]
	[Compact]
	public class DocProp {
		[CCode (has_construct_function = false)]
		public DocProp (owned string name);
		public void dump ();
		public unowned string? get_link ();
		public unowned string get_name ();
		public unowned GLib.Value? get_val ();
		public void set_link (owned string link);
		public void set_val (owned GLib.Value val);
		public GLib.Value swap_val (GLib.Value val);
	}
	[CCode (cheader_filename = "gsf/gsf-docprop-vector.h", type_id = "GSF_DOC_PROP_VECTOR_TYPE")]
	public class DocPropVector : GLib.Object {
		[CCode (cname = "gsf_docprop_vector_new", has_construct_function = false)]
		public DocPropVector ();
		[CCode (cname = "gsf_docprop_vector_append")]
		public void append (GLib.Value value);
		[CCode (cname = "gsf_docprop_vector_as_string")]
		public string as_string ();
	}
	[CCode (cheader_filename = "gsf/gsf-infile-impl.h", type_id = "GSF_INFILE_TYPE")]
	public class Infile : Gsf.Input {
		[CCode (has_construct_function = false)]
		protected Infile ();
		public unowned Gsf.Input child_by_aname ([CCode (array_length = false)] string[] names);
		public virtual unowned Gsf.Input? child_by_index (int i);
		public virtual unowned Gsf.Input? child_by_name (string name);
		public unowned Gsf.Input child_by_vaname (void* names);
		public unowned Gsf.Input? child_by_vname ();
		public virtual unowned string? name_by_index (int i);
		public virtual int num_children ();
	}
	[CCode (cheader_filename = "gsf/gsf-infile-msole.h", type_id = "GSF_INFILE_MSOLE_TYPE")]
	public class InfileMSOle : Gsf.Infile {
		[CCode (cname = "gsf_infile_msole_new", has_construct_function = false, type = "GsfInfile*")]
		public InfileMSOle (Gsf.Input source) throws GLib.Error;
		[CCode (cname = "gsf_infile_msole_get_class_id")]
		public bool get_class_id (uchar res);
	}
	[CCode (cheader_filename = "gsf/gsf-infile-msvba.h", type_id = "GSF_INFILE_MSVBA_TYPE")]
	public class InfileMSVBA : Gsf.Infile {
		[CCode (has_construct_function = false, type = "GsfInfile*")]
		public InfileMSVBA (Gsf.Infile source) throws GLib.Error;
		public unowned GLib.HashTable get_modules ();
		public unowned GLib.HashTable steal_modules ();
	}
	[CCode (cheader_filename = "gsf/gsf-infile-stdio.h", type_id = "GSF_INFILE_STDIO_TYPE")]
	public class InfileStdio : Gsf.Infile {
		[CCode (has_construct_function = false, type = "GsfInfile*")]
		public InfileStdio (string root) throws GLib.Error;
	}
	[CCode (cheader_filename = "gsf/gsf.h")]
	public class InfileTar : Gsf.Infile {
		[CCode (has_construct_function = false, type = "GsfInfile*")]
		public InfileTar (Gsf.Input source) throws GLib.Error;
		[NoAccessorMethod]
		public Gsf.Input source { owned get; construct; }
	}
	[CCode (cheader_filename = "gsf/gsf-infile-zip.h", type_id = "GSF_INFILE_GZIP_TYPE")]
	public class InfileZip : Gsf.Infile {
		[CCode (has_construct_function = false, type = "GsfInfile*")]
		public InfileZip (Gsf.Input source) throws GLib.Error;
		[NoAccessorMethod]
		public int compression_level { get; }
		public Gsf.InfileZip internal_parent { construct; }
		[NoAccessorMethod]
		public Gsf.Input source { owned get; construct; }
	}
	[CCode (cheader_filename = "gsf/gsf-input-impl.h", type_id = "GSF_INPUT_TYPE")]
	public class Input : GLib.Object {
		public Gsf.off_t cur_offset;
		[CCode (has_construct_function = false)]
		protected Input ();
		[NoWrapper]
		public virtual Gsf.Input Dup () throws GLib.Error;
		[NoWrapper]
		public virtual Gsf.Input OpenSibling (string path) throws GLib.Error;
		[CCode (array_length = false)]
		[NoWrapper]
		public virtual unowned uchar[]? Read (size_t num_bytes, [CCode (array_length = false)] uchar[]? optional_buffer);
		[NoWrapper]
		public virtual bool Seek (Gsf.off_t offset, GLib.SeekType whence);
		public unowned Gsf.Infile? container ();
		public bool copy (Gsf.Output output);
		public void dump (bool dump_as_hex);
		public Gsf.Input dup () throws GLib.Error;
		public bool eof ();
		public static GLib.Quark error ();
		public static GLib.Quark error_id ();
		public unowned Gsf.InfileMSVBA find_vba () throws GLib.Error;
		public static Gsf.Input mmap_new (string filename) throws GLib.Error;
		public unowned string? name ();
		[CCode (array_length = false)]
		public unowned uchar[]? read (size_t num_bytes, [CCode (array_length = false)] uchar[]? optional_buffer);
		public Gsf.off_t remaining ();
		public bool seek (Gsf.off_t offset, GLib.SeekType whence);
		public bool seek_emulate (Gsf.off_t pos);
		public bool set_container (Gsf.Infile? container);
		public bool set_name (string? name);
		public bool set_name_from_filename (string filename);
		public bool set_size (Gsf.off_t size);
		public unowned Gsf.Input? sibling (string name) throws GLib.Error;
		public Gsf.off_t size ();
		public Gsf.off_t tell ();
		public unowned Gsf.Input uncompress ();
		[NoAccessorMethod]
		public int64 position { get; }
	}
	[CCode (cheader_filename = "gsf/gsf-input-gzip.h", type_id = "GSF_INPUT_GZIP_TYPE")]
	public class InputGZip : Gsf.Input {
		[CCode (has_construct_function = false, type = "GsfInput*")]
		public InputGZip (Gsf.Input source) throws GLib.Error;
		[NoAccessorMethod]
		public bool raw { get; construct; }
		[NoAccessorMethod]
		public Gsf.Input source { owned get; construct; }
		[NoAccessorMethod]
		public int64 uncompressed_size { get; construct; }
	}
	[CCode (cheader_filename = "gsf/gsf.h")]
	public class InputGio : Gsf.Input {
		[CCode (has_construct_function = false, type = "GsfInput*")]
		public InputGio (GLib.File file) throws GLib.Error;
		[CCode (has_construct_function = false, type = "GsfInput*")]
		public InputGio.for_path (string path) throws GLib.Error;
		[CCode (has_construct_function = false, type = "GsfInput*")]
		public InputGio.for_uri (string uri) throws GLib.Error;
	}
	[CCode (cheader_filename = "gsf/gsf-input-http.h", type_id = "GSF_INPUT_HTTP_TYPE")]
	public class InputHTTP : Gsf.Input {
		[CCode (has_construct_function = false, type = "GsfInput*")]
		public InputHTTP (string url) throws GLib.Error;
		public unowned string get_content_type ();
		public unowned string get_url ();
		public string content_type { get; construct; }
		public string url { get; construct; }
	}
	[CCode (cheader_filename = "gsf/gsf-input-memory.h", type_id = "GSF_INPUT_MEMORY_TYPE")]
	public class InputMemory : Gsf.Input {
		[CCode (has_construct_function = false, type = "GsfInput*")]
		public InputMemory ([CCode (array_length_type = "Gsf.off_t")] uint8[] buf, bool needs_free);
		[CCode (has_construct_function = false, type = "GsfInput*")]
		public InputMemory.clone ([CCode (array_length_type = "Gsf.off_t")] uint8[] buf);
		[CCode (has_construct_function = false, type = "GsfInput*")]
		public InputMemory.from_bzip (Gsf.Input source) throws GLib.Error;
		[CCode (has_construct_function = false, type = "GsfInput*")]
		public InputMemory.from_iochannel (GLib.IOChannel channel) throws GLib.Error;
	}
	[CCode (cheader_filename = "gsf/gsf-input-proxy.h", type_id = "GSF_INPUT_PROXY_TYPE")]
	public class InputProxy : Gsf.Input {
		[CCode (has_construct_function = false, type = "GsfInput*")]
		public InputProxy (Gsf.Input source);
		[CCode (has_construct_function = false, type = "GsfInput*")]
		public InputProxy.section (Gsf.Input source, Gsf.off_t offset, Gsf.off_t size);
	}
	[CCode (cheader_filename = "gsf/gsf-input-stdio.h", type_id = "GSF_INPUT_STDIO_TYPE")]
	public class InputStdio : Gsf.Input {
		[CCode (has_construct_function = false, type = "GsfInput*")]
		public InputStdio (string filename) throws GLib.Error;
	}
	[CCode (cheader_filename = "gsf/gsf-input-textline.h", type_id = "GSF_INPUT_TEXTLINE_TYPE")]
	public class InputTextline : Gsf.Input {
		[CCode (has_construct_function = false, type = "GsfInput*")]
		public InputTextline (Gsf.Input source);
		[CCode (array_length = false)]
		public unowned uint[]? ascii_gets ();
		[CCode (array_length = false)]
		public unowned uchar[]? utf8_gets ();
	}
	[CCode (cheader_filename = "gsf/gsf-open-pkg-utils.h")]
	[Compact]
	public class OpenPkgRel {
		public unowned string get_target ();
		public bool is_extern ();
	}
	[CCode (cheader_filename = "gsf/gsf-open-pkg-utils.h")]
	[Compact]
	public class OpenPkgRels {
	}
	[CCode (cheader_filename = "gsf/gsf-outfile-impl.h")]
	public class Outfile : Gsf.Output {
		[CCode (has_construct_function = false)]
		protected Outfile ();
		public Gsf.Output new_child (string name, bool is_dir);
		public Gsf.Output new_child_full (string name, bool is_dir, ...);
	}
	[CCode (cheader_filename = "gsf/gsf-outfile-msole.h", type_id = "GSF_OUTFILE_MSOLE_TYPE")]
	public class OutfileMSOle : Gsf.Outfile {
		[CCode (cname = "gsf_outfile_msole_new", has_construct_function = false, type = "GsfOutfile*")]
		public OutfileMSOle (Gsf.Output sink);
		[CCode (cname = "gsf_outfile_msole_new_full", has_construct_function = false, type = "GsfOutfile*")]
		public OutfileMSOle.full (Gsf.Output sink, uint bb_size, uint sb_size);
		[CCode (cname = "gsf_outfile_msole_set_class_id")]
		public bool set_class_id (uchar clsid);
	}
	[CCode (cheader_filename = "gsf/gsf-open-pkg-utils.h")]
	public class OutfileOpenPkg : Gsf.Outfile {
		[CCode (has_construct_function = false, type = "GsfOutfile*")]
		public OutfileOpenPkg (Gsf.Outfile sink);
		public unowned string add_extern_rel (string target, string content_type);
		public static Gsf.Output add_rel (Gsf.Outfile dir, string name, string content_type, Gsf.Outfile parent, string type);
		public unowned string relate (Gsf.OutfileOpenPkg parent, string type);
		public void set_content_type (string content_type);
		public void set_sink (Gsf.Output sink);
		[NoAccessorMethod]
		public string content_type { owned get; construct; }
		[NoAccessorMethod]
		public bool is_dir { get; construct; }
		[NoAccessorMethod]
		public Gsf.Outfile sink { owned get; construct; }
	}
	[CCode (cheader_filename = "gsf/gsf-outfile-stdio.h", type_id = "GSF_OUTFILE_STDIO_TYPE")]
	public class OutfileStdio : Gsf.Outfile {
		[CCode (has_construct_function = false, type = "GsfOutfile*")]
		public OutfileStdio (string root) throws GLib.Error;
		[CCode (has_construct_function = false, type = "GsfOutfile*")]
		public OutfileStdio.full (string root, ...) throws GLib.Error;
	}
	[CCode (cheader_filename = "gsf/gsf-outfile-zip.h", type_id = "GSF_OUTFILE_ZIP_TYPE")]
	public class OutfileZip : Gsf.Outfile {
		[CCode (has_construct_function = false, type = "GsfOutfile*")]
		public OutfileZip (Gsf.Output sink) throws GLib.Error;
		public bool set_compression_method (Gsf.ZipCompressionMethod method);
		[NoAccessorMethod]
		public int compression_level { get; construct; }
		[NoAccessorMethod]
		public string entry_name { owned get; construct; }
		[NoAccessorMethod]
		public Gsf.Output sink { owned get; construct; }
	}
	[CCode (cheader_filename = "gsf/gsf-output-impl.h", type_id = "GSF_OUTPUT_TYPE")]
	public class Output : GLib.Object {
		public Gsf.off_t cur_offset;
		public Gsf.off_t cur_size;
		public weak GLib.Error err;
		public weak string printf_buf;
		public int printf_buf_size;
		public weak GLib.Object wrapped_by;
		[CCode (has_construct_function = false)]
		protected Output ();
		[NoWrapper]
		public virtual bool Close ();
		[NoWrapper]
		public virtual bool Seek (Gsf.off_t offset, GLib.SeekType whence);
		[NoWrapper]
		public virtual bool Write (size_t num_bytes, [CCode (array_length = false)] uchar[] data);
		public bool close ();
		public unowned Gsf.Outfile? container ();
		public unowned GLib.Error error ();
		public static GLib.Quark error_id ();
		public bool is_closed ();
		public unowned string? name ();
		public bool printf (string format, ...);
		public bool puts (string line);
		public bool seek (Gsf.off_t offset, GLib.SeekType whence);
		public bool set_container (Gsf.Outfile? container);
		public bool set_error (int code, string format);
		public bool set_name (string? name);
		public bool set_name_from_filename (string filename);
		public Gsf.off_t size ();
		public Gsf.off_t tell ();
		public static bool unwrap (GLib.Object wrapper, Gsf.Output wrapee);
		public static bool wrap (GLib.Object wrapper, Gsf.Output wrapee);
		public bool write (size_t num_bytes, [CCode (array_length = false)] uchar[] data);
		[NoAccessorMethod]
		public int64 position { get; }
	}
	[CCode (cheader_filename = "gsf/gsf-output-bzip.h", type_id = "GSF_OUTPUT_BZIP_TYPE")]
	public class OutputBzip : Gsf.Output {
		[CCode (has_construct_function = false, type = "GsfOutput*")]
		public OutputBzip (Gsf.Output sink) throws GLib.Error;
	}
	[CCode (cheader_filename = "gsf/gsf-output-csv.h", type_id = "GSF_OUTPUT_CSV_TYPE")]
	public class OutputCsv : Gsf.Output {
		public weak GLib.StringBuilder buf;
		public size_t eol_len;
		public bool fields_on_line;
		public size_t quote_len;
		public size_t separator_len;
		[CCode (has_construct_function = false)]
		protected OutputCsv ();
		public bool write_eol ();
		public bool write_field (string field, size_t len);
		[NoAccessorMethod]
		public string eol { owned get; set construct; }
		[NoAccessorMethod]
		public string quote { owned get; set construct; }
		[NoAccessorMethod]
		public Gsf.OutputCsvQuotingMode quoting_mode { get; set construct; }
		[NoAccessorMethod]
		public bool quoting_on_whitespace { get; set; }
		[NoAccessorMethod]
		public string quoting_triggers { owned get; set; }
		[NoAccessorMethod]
		public string separator { owned get; set construct; }
		[NoAccessorMethod]
		public Gsf.Output sink { owned get; set; }
	}
	[CCode (cheader_filename = "gsf/gsf-output-gzip.h", type_id = "GSF_OUTPUT_GZIP_TYPE")]
	public class OutputGZip : Gsf.Output {
		[CCode (has_construct_function = false, type = "GsfOutput*")]
		public OutputGZip (Gsf.Output sink) throws GLib.Error;
		[NoAccessorMethod]
		public bool raw { get; construct; }
		[NoAccessorMethod]
		public Gsf.Output sink { owned get; construct; }
	}
	[CCode (cheader_filename = "gsf/gsf-output-gio.h", type_id = "GSF_OUTPUT_GIO_TYPE")]
	public class OutputGio : Gsf.Output {
		[CCode (has_construct_function = false, type = "GsfOutput*")]
		public OutputGio (GLib.File file);
		[CCode (has_construct_function = false, type = "GsfOutput*")]
		public OutputGio.for_path (string path) throws GLib.Error;
		[CCode (has_construct_function = false, type = "GsfOutput*")]
		public OutputGio.for_uri (string uri) throws GLib.Error;
	}
	[CCode (cheader_filename = "gsf/gsf-output-iochannel.h", type_id = "GSF_OUTPUT_IOCHANNEL_TYPE")]
	public class OutputIOChannel : Gsf.Output {
		[CCode (cname = "gsf_output_iochannel_new", has_construct_function = false, type = "GsfOutput*")]
		public OutputIOChannel (GLib.IOChannel channel);
	}
	[CCode (cheader_filename = "gsf/gsf-output-iconv.h", type_id = "GSF_OUTPUT_ICONV_TYPE")]
	public class OutputIconv : Gsf.Output {
		[CCode (has_construct_function = false, type = "GsfOutput*")]
		public OutputIconv (Gsf.Output sink, string dst, string src);
		[NoAccessorMethod]
		public string fallback { owned get; set; }
		[NoAccessorMethod]
		public string input_charset { owned get; construct; }
		[NoAccessorMethod]
		public string output_charset { owned get; construct; }
		[NoAccessorMethod]
		public Gsf.Output sink { owned get; construct; }
	}
	[CCode (cheader_filename = "gsf/gsf-output-memory.h", type_id = "GSF_OUTPUT_MEMORY_TYPE")]
	public class OutputMemory : Gsf.Output {
		[CCode (has_construct_function = false, type = "GsfOutput*")]
		public OutputMemory ();
		[CCode (array_length = false)]
		public unowned uchar[] get_bytes ();
	}
	[CCode (cheader_filename = "gsf/gsf-output-stdio.h", type_id = "GSF_OUTPUT_STDIO_TYPE")]
	public class OutputStdio : Gsf.Output {
		[CCode (has_construct_function = false, type = "GsfOutput*")]
		public OutputStdio (string filename) throws GLib.Error;
		[CCode (has_construct_function = false, type = "GsfOutput*")]
		public OutputStdio.full (string filename, ...) throws GLib.Error;
	}
	[CCode (cheader_filename = "gsf/gsf-infile-msvba.h", type_id = "GSF_SHARED_MEMORY_TYPE")]
	public class SharedMemory : GLib.Object {
		public void* buf;
		public bool needs_free;
		public bool needs_unmap;
		public Gsf.off_t size;
		[CCode (has_construct_function = false)]
		public SharedMemory (void* buf, Gsf.off_t size, bool needs_free);
		public static unowned Gsf.SharedMemory mmapped_new (void* buf, Gsf.off_t size);
	}
	[CCode (cheader_filename = "gsf/gsf-structured-blob.h", type_id = "GSF_STRUCTURED_BLOB_TYPE")]
	public class StructuredBlob : Gsf.Infile {
		[CCode (has_construct_function = false)]
		protected StructuredBlob ();
		public static Gsf.StructuredBlob read (Gsf.Input input);
		public bool write (Gsf.Outfile container);
	}
	[CCode (cheader_filename = "gsf/gsf-timestamp.h", copy_function = "gsf_timestamp_copy", type_id = "gsf_timestamp_get_type ()")]
	[Compact]
	public class Timestamp {
		public GLib.Date date;
		public long seconds;
		public weak GLib.StringBuilder time_zone;
		public uint32 timet;
		[CCode (has_construct_function = false)]
		public Timestamp ();
		public string as_string ();
		public Gsf.Timestamp copy ();
		public bool equal (Gsf.Timestamp b);
		public static int from_string (string spec, Gsf.Timestamp stamp);
		public uint hash ();
		public static int parse (string spec, Gsf.Timestamp stamp);
		public void set_time (uint64 t);
	}
	[CCode (cheader_filename = "gsf/gsf-libxml.h")]
	[Compact]
	public class XMLBlob {
	}
	[CCode (cheader_filename = "gsf/gsf-libxml.h")]
	[Compact]
	public class XMLIn {
		public weak GLib.StringBuilder content;
		public weak Gsf.XMLInDoc doc;
		public weak Gsf.XMLInNode node;
		public weak GLib.SList node_stack;
		public void* user_state;
		public unowned string check_ns (string str, uint ns_id);
		public unowned Gsf.Input get_input ();
		public bool namecmp (string str, uint ns_id, string name);
		public void push_state (Gsf.XMLInDoc doc, void* new_state, Gsf.XMLInExtDtor dtor, [CCode (array_length = false)] string[] attrs);
	}
	[CCode (cheader_filename = "gsf/gsf-libxml.h")]
	[Compact]
	public class XMLInDoc {
		[CCode (has_construct_function = false)]
		public XMLInDoc ([CCode (array_length = false)] Gsf.XMLInNode[] nodes, Gsf.XMLInNS ns);
		public void add_nodes (Gsf.XMLInNode nodes);
		public bool parse (Gsf.Input input, void* user_state);
		public void set_unknown_handler (Gsf.XMLInUnknownFunc handler);
	}
	[CCode (cheader_filename = "gsf/gsf-libxml.h")]
	[Compact]
	public class XMLInNS {
		public uint ns_id;
		public weak string uri;
	}
	[CCode (cheader_filename = "gsf/gsf-libxml.h")]
	[Compact]
	public class XMLInNode {
		public uint check_children_for_ns;
		public weak GLib.Callback end;
		public Gsf.XMLContent has_content;
		public weak string id;
		public weak string name;
		public int ns_id;
		public weak string parent_id;
		public uint share_children_with_parent;
		public weak GLib.Callback start;
		public void* user_data;
	}
	[CCode (cheader_filename = "gsf/gsf-libxml.h", type_id = "GSF_XML_OUT_TYPE")]
	public class XMLOut : GLib.Object {
		[CCode (has_construct_function = false)]
		public XMLOut (Gsf.Output output);
		public void add_base64 (string id, uchar data, uint len);
		public void add_bool (string id, bool val);
		public void add_color (string id, uint r, uint g, uint b);
		public void add_cstr (string id, string val_utf8);
		public void add_cstr_unchecked (string id, string val_utf8);
		public void add_enum (string id, GLib.Type etype, int val);
		public void add_float (string id, double val, int precision);
		public void add_gvalue (string id, GLib.Value val);
		public void add_int (string id, int val);
		public void add_uint (string id, uint val);
		public unowned string end_element ();
		public unowned Gsf.Output get_output ();
		public void set_doc_type (string type);
		public void simple_element (string id, string content);
		public void simple_float_element (string id, double val, int precision);
		public void simple_int_element (string id, int val);
		public void start_element (string id);
		[NoAccessorMethod]
		public bool pretty_print { get; set; }
	}
	[CCode (cheader_filename = "glib.h", cname = "gint64", default_value = "0LL", get_value_function = "g_value_get_int64", marshaller_type_name = "INT64", set_value_function = "g_value_set_int64", type_id = "G_TYPE_INT64", type_signature = "x")]
	[IntegerType (rank = 10)]
	[SimpleType]
	public struct off_t : int64 {
	}
	[CCode (cheader_filename = "gsf/gsf-clip-data.h", cprefix = "GSF_CLIP_FORMAT_", has_type_id = false)]
	public enum ClipFormat {
		WINDOWS_CLIPBOARD,
		MACINTOSH_CLIPBOARD,
		GUID,
		NO_DATA,
		CLIPBOARD_FORMAT_NAME,
		UNKNOWN
	}
	[CCode (cheader_filename = "gsf/gsf-clip-data.h", cprefix = "GSF_CLIP_FORMAT_WINDOWS_", has_type_id = false)]
	public enum ClipFormatWindows {
		ERROR,
		UNKNOWN,
		METAFILE,
		DIB,
		ENHANCED_METAFILE
	}
	[CCode (cheader_filename = "gsf/gsf-output-csv.h", cprefix = "GSF_OUTPUT_CSV_QUOTING_MODE_")]
	public enum OutputCsvQuotingMode {
		NEVER,
		AUTO,
		ALWAYS
	}
	[CCode (cheader_filename = "gsf/gsf-libxml.h", cprefix = "GSF_XML_", has_type_id = false)]
	public enum XMLContent {
		NO_CONTENT,
		CONTENT,
		SHARED_CONTENT
	}
	[CCode (cheader_filename = "gsf/gsf-outfile-zip.h", cprefix = "GSF_ZIP_", has_type_id = false)]
	public enum ZipCompressionMethod {
		STORED,
		SHRUNK,
		REDUCEDx1,
		REDUCEDx2,
		REDUCEDx3,
		REDUCEDx4,
		IMPLODED,
		TOKENIZED,
		DEFLATED,
		DEFLATED_BETTER,
		IMPLODED_BETTER
	}
	[CCode (cheader_filename = "gsf/gsf-utils.h", cprefix = "GSF_ERROR_")]
	public errordomain Error {
		OUT_OF_MEMORY,
		INVALID_DATA
	}
	[CCode (cheader_filename = "gsf/gsf.h")]
	public delegate void OpenPkgIter (Gsf.Input opkg, Gsf.OpenPkgRel rel);
	[CCode (cheader_filename = "gsf/gsf-libxml.h", has_target = false)]
	public delegate void XMLInExtDtor (Gsf.XMLIn xin, void* old_state);
	[CCode (cheader_filename = "gsf/gsf-libxml.h", has_target = false)]
	public delegate bool XMLInUnknownFunc (Gsf.XMLIn xin, string elem, out unowned string attrs);
	[CCode (cheader_filename = "gsf/gsf.h", has_target = false)]
	public delegate bool XMLProbeFunc (string name, string prefix, string URI, int nb_namespaces, out unowned string namespaces, int nb_attributes, int nb_defaulted, out unowned string attributes);
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_BYTE_COUNT;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_CASE_SENSITIVE;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_CATEGORY;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_CELL_COUNT;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_CHARACTER_COUNT;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_CODEPAGE;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_COMPANY;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_CREATOR;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_DATE_CREATED;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_DATE_MODIFIED;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_DESCRIPTION;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_DICTIONARY;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_DOCUMENT_PARTS;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_EDITING_DURATION;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_GENERATOR;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_HEADING_PAIRS;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_HIDDEN_SLIDE_COUNT;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_IMAGE_COUNT;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_INITIAL_CREATOR;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_KEYWORD;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_KEYWORDS;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_LANGUAGE;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_LAST_PRINTED;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_LAST_SAVED_BY;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_LINE_COUNT;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_LINKS_DIRTY;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_LOCALE_SYSTEM_DEFAULT;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_MANAGER;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_MM_CLIP_COUNT;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_MSOLE_UNKNOWN_17;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_MSOLE_UNKNOWN_18;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_MSOLE_UNKNOWN_19;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_MSOLE_UNKNOWN_20;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_MSOLE_UNKNOWN_21;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_MSOLE_UNKNOWN_22;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_MSOLE_UNKNOWN_23;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_NOTE_COUNT;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_OBJECT_COUNT;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_PAGE_COUNT;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_PARAGRAPH_COUNT;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_PRESENTATION_FORMAT;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_PRINTED_BY;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_PRINT_DATE;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_REVISION_COUNT;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_SCALE;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_SECURITY;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_SLIDE_COUNT;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_SPREADSHEET_COUNT;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_SUBJECT;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_TABLE_COUNT;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_TEMPLATE;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_THUMBNAIL;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_TITLE;
	[CCode (cheader_filename = "gsf/gsf-meta-names.h")]
	public const string META_NAME_WORD_COUNT;
	[CCode (cheader_filename = "gsf/gsf-outfile-ole.h")]
	public const int OLE_DEFAULT_BB_SHIFT;
	[CCode (cheader_filename = "gsf/gsf-outfile-ole.h")]
	public const int OLE_DEFAULT_SB_SHIFT;
	[CCode (cheader_filename = "gsf/gsf-utils.h")]
	public static size_t base64_decode_simple ([CCode (array_length = false)] uchar[] data, size_t len);
	[CCode (cheader_filename = "gsf/gsf-utils.h")]
	public static size_t base64_decode_step ([CCode (array_length = false)] uchar[] @in, size_t len, [CCode (array_length = false)] uchar[] @out, out int state, out uint save);
	[CCode (cheader_filename = "gsf/gsf-utils.h")]
	public static size_t base64_encode_close ([CCode (array_length = false)] uchar[] @in, size_t inlen, bool break_lines, [CCode (array_length = false)] uchar[] @out, out int state, out uint save);
	[CCode (array_length = false, cheader_filename = "gsf/gsf-utils.h")]
	public static unowned uchar[] base64_encode_simple ([CCode (array_length = false)] uchar[] data, size_t len);
	[CCode (cheader_filename = "gsf/gsf-utils.h")]
	public static size_t base64_encode_step ([CCode (array_length = false)] uchar[] @in, size_t len, bool break_lines, [CCode (array_length = false)] uchar[] @out, out int state, out uint save);
	[CCode (cheader_filename = "gsf/gsf-doc-meta-data.h")]
	public static void doc_meta_dump (Gsf.DocMetaData meta);
	[CCode (cheader_filename = "gsf/gsf-utils.h")]
	public static GLib.Quark error_quark ();
	[CCode (cheader_filename = "gsf/gsf-utils.h")]
	public static unowned string extension_pointer (string path);
	[CCode (cheader_filename = "gsf/gsf-utils.h")]
	public static string filename_to_utf8 (string filename, bool quoted);
	[CCode (cheader_filename = "gsf/gsf.h", cname = "get_gsf_odf_version")]
	public static short get_gsf_odf_version ();
	[CCode (cheader_filename = "gsf/gsf.h", cname = "get_gsf_odf_version_string")]
	public static unowned string get_gsf_odf_version_string ();
	[CCode (cheader_filename = "gsf/gsf.h", cname = "get_gsf_ooo_ns")]
	public static unowned Gsf.XMLInNS get_gsf_ooo_ns ();
	[CCode (cheader_filename = "gsf/gsf-utils.h")]
	public static void iconv_close (GLib.IConv handle);
	[CCode (cheader_filename = "gsf/gsf-utils.h")]
	public static void init ();
	[CCode (cheader_filename = "gsf/gsf-utils.h")]
	public static void init_dynamic (GLib.TypeModule module);
	[CCode (cheader_filename = "gsf/gsf-utils.h")]
	public static double le_get_double (void* p);
	[CCode (cheader_filename = "gsf/gsf-utils.h")]
	public static float le_get_float (void* p);
	[CCode (cheader_filename = "gsf/gsf-utils.h")]
	public static uint64 le_get_guint64 (void* p);
	[CCode (cheader_filename = "gsf/gsf-utils.h")]
	public static void le_set_double (void* p, double d);
	[CCode (cheader_filename = "gsf/gsf-utils.h")]
	public static void le_set_float (void* p, float f);
	[CCode (cheader_filename = "gsf/gsf-utils.h")]
	public static void mem_dump ([CCode (array_length = false)] uchar[] ptr, size_t len);
	[CCode (cheader_filename = "gsf/gsf-msole-utils.h")]
	public static uint msole_codepage_to_lid (int codepage);
	[CCode (cheader_filename = "gsf/gsf-msole-utils.h")]
	public static GLib.IConv msole_iconv_open_codepage_for_export (int codepage_to);
	[CCode (cheader_filename = "gsf/gsf-msole-utils.h")]
	public static GLib.IConv msole_iconv_open_codepage_for_import (string to, int codepage);
	[CCode (cheader_filename = "gsf/gsf-msole-utils.h")]
	public static GLib.IConv msole_iconv_open_codepages_for_export (int codepage_to, string from);
	[CCode (cheader_filename = "gsf/gsf-msole-utils.h")]
	public static GLib.IConv msole_iconv_open_for_export ();
	[CCode (cheader_filename = "gsf/gsf-msole-utils.h")]
	public static GLib.IConv msole_iconv_open_for_import (int codepage);
	[CCode (cheader_filename = "gsf/gsf-msole-utils.h")]
	public static int msole_iconv_win_codepage ();
	[CCode (cheader_filename = "gsf/gsf-msole-utils.h")]
	public static unowned GLib.ByteArray msole_inflate (Gsf.Input input, Gsf.off_t offset);
	[CCode (cheader_filename = "gsf/gsf-msole-utils.h")]
	public static unowned string msole_language_for_lid (uint lid);
	[CCode (cheader_filename = "gsf/gsf-msole-utils.h")]
	public static uint msole_lid_for_language (string lang);
	[CCode (cheader_filename = "gsf/gsf-msole-utils.h")]
	public static int msole_lid_to_codepage (uint lid);
	[CCode (cheader_filename = "gsf/gsf-msole-utils.h")]
	public static unowned string msole_lid_to_codepage_str (uint lid);
	[CCode (cheader_filename = "gsf/gsf-msole-utils.h")]
	public static unowned GLib.Error msole_metadata_read (Gsf.Input @in, Gsf.DocMetaData accum);
	[CCode (cheader_filename = "gsf/gsf-msole-utils.h")]
	public static bool msole_metadata_write (Gsf.Output @out, Gsf.DocMetaData meta_data, bool doc_not_component);
	[CCode (cheader_filename = "gsf/gsf-open-pkg-utils.h")]
	public static int open_pkg_error_id ();
	[CCode (cheader_filename = "gsf/gsf.h")]
	public static void open_pkg_foreach_rel (Gsf.Input opkg, Gsf.OpenPkgIter func);
	[CCode (cheader_filename = "gsf/gsf-open-pkg-utils.h")]
	public static Gsf.Input open_pkg_get_rel_by_id (Gsf.Input opkg, string id);
	[CCode (cheader_filename = "gsf/gsf-open-pkg-utils.h")]
	public static Gsf.Input open_pkg_get_rel_by_type (Gsf.Input opkg, string type);
	[CCode (cheader_filename = "gsf/gsf-open-pkg-utils.h")]
	public static unowned Gsf.OpenPkgRel open_pkg_lookup_rel_by_id (Gsf.Input opkg, string id);
	[CCode (cheader_filename = "gsf/gsf-open-pkg-utils.h")]
	public static unowned Gsf.OpenPkgRel open_pkg_lookup_rel_by_type (Gsf.Input opkg, string type);
	[CCode (cheader_filename = "gsf/gsf.h")]
	public static unowned Gsf.Input open_pkg_open_rel (Gsf.Input opkg, Gsf.OpenPkgRel rel) throws GLib.Error;
	[CCode (cheader_filename = "gsf/gsf-open-pkg-utils.h")]
	public static Gsf.Input open_pkg_open_rel_by_id (Gsf.Input opkg, string id) throws GLib.Error;
	[CCode (cheader_filename = "gsf/gsf-open-pkg-utils.h")]
	public static Gsf.Input open_pkg_open_rel_by_type (Gsf.Input opkg, string type) throws GLib.Error;
	[CCode (cheader_filename = "gsf/gsf-open-pkg-utils.h")]
	public static unowned GLib.Error open_pkg_parse_rel_by_id (Gsf.XMLIn xin, string id, Gsf.XMLInNode dtd, Gsf.XMLInNS ns);
	[CCode (cheader_filename = "gsf/gsf-opendoc-utils.h")]
	public static unowned GLib.Error opendoc_metadata_read (Gsf.Input input, Gsf.DocMetaData md);
	[CCode (cheader_filename = "gsf/gsf-opendoc-utils.h")]
	public static void opendoc_metadata_subtree (Gsf.XMLIn doc, Gsf.DocMetaData md);
	[CCode (cheader_filename = "gsf/gsf-opendoc-utils.h")]
	public static bool opendoc_metadata_write (Gsf.XMLOut output, Gsf.DocMetaData md);
	[CCode (cheader_filename = "gsf/gsf-utils.h")]
	public static void property_settings_collect (GLib.Type object_type, [CCode (array_length = false)] GLib.Parameter[] p_params, ref size_t p_n_params, ...);
	[CCode (cheader_filename = "gsf/gsf-utils.h")]
	public static void property_settings_free (GLib.Parameter[] @params);
	[CCode (cheader_filename = "gsf/gsf-utils.h")]
	public static void shutdown ();
	[CCode (cheader_filename = "gsf/gsf-utils.h")]
	public static void shutdown_dynamic (GLib.TypeModule module);
	[CCode (cheader_filename = "gsf/gsf-docprop-vector.h")]
	public static unowned GLib.ValueArray value_get_docprop_varray (GLib.Value value);
	[CCode (cheader_filename = "gsf/gsf-docprop-vector.h")]
	public static unowned Gsf.DocPropVector value_get_docprop_vector (GLib.Value value);
	[CCode (cheader_filename = "gsf/gsf-timestamp.h")]
	public static void value_set_timestamp (GLib.Value value, Gsf.Timestamp stamp);
	[CCode (cheader_filename = "gsf/gsf-libxml.h")]
	public static int xmlDocFormatDump (Gsf.Output output, Xml.Doc cur, string encoding, bool format);
	[CCode (cheader_filename = "gsf/gsf-libxml.h")]
	public static bool xml_gvalue_from_str (GLib.Value res, GLib.Type t, string str);
	[CCode (cheader_filename = "gsf/gsf-libxml.h")]
	public static Xml.ParserCtxt xml_parser_context (Gsf.Input input);
	[CCode (cheader_filename = "gsf/gsf.h")]
	public static bool xml_probe (Gsf.Input input, Gsf.XMLProbeFunc startElement);
}
