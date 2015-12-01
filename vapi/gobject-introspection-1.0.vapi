/* gobject-introspection-1.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "GI", gir_namespace = "GIRepository", gir_version = "2.0", lower_case_cprefix = "g_")]
namespace GI {
	[CCode (cheader_filename = "girepository.h")]
	public class ArgInfo : GI.BaseInfo {
		[CCode (has_construct_function = false)]
		protected ArgInfo ();
		public static int get_closure (GI.ArgInfo info);
		public static int get_destroy (GI.ArgInfo info);
		public static GI.Direction get_direction (GI.ArgInfo info);
		public static GI.Transfer get_ownership_transfer (GI.ArgInfo info);
		public static GI.ScopeType get_scope (GI.ArgInfo info);
		public static GI.TypeInfo get_type (GI.ArgInfo info);
		public static bool is_caller_allocates (GI.ArgInfo info);
		public static bool is_optional (GI.ArgInfo info);
		public static bool is_return_value (GI.ArgInfo info);
		public static bool is_skip (GI.ArgInfo info);
		public static void load_type (GI.ArgInfo info, out unowned GI.TypeInfo type);
		public static bool may_be_null (GI.ArgInfo info);
	}
	[CCode (cheader_filename = "girepository.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", lower_case_csuffix = "base_info_gtype", type_id = "g_base_info_gtype_get_type ()")]
	[Compact]
	public class BaseInfo {
		[CCode (cname = "g_base_info_equal")]
		public bool equal (GI.BaseInfo info2);
		[CCode (cname = "g_base_info_get_attribute")]
		public unowned string get_attribute (string name);
		[CCode (cname = "g_base_info_get_container")]
		public unowned GI.BaseInfo get_container ();
		[CCode (cname = "g_base_info_get_name")]
		public unowned string get_name ();
		[CCode (cname = "g_base_info_get_namespace")]
		public unowned string get_namespace ();
		[CCode (cname = "g_base_info_get_type")]
		public GI.InfoType get_type ();
		[CCode (cname = "g_base_info_get_typelib")]
		public unowned GI.Typelib get_typelib ();
		[CCode (cname = "g_base_info_is_deprecated")]
		public bool is_deprecated ();
		[CCode (cname = "g_base_info_iterate_attributes")]
		public bool iterate_attributes (GI.AttributeIter iterator, out unowned string name, out unowned string value);
	}
	[CCode (cheader_filename = "girepository.h")]
	public class CallableInfo : GI.BaseInfo {
		[CCode (has_construct_function = false)]
		protected CallableInfo ();
		public static bool can_throw_gerror (GI.CallableInfo info);
		public static GI.ArgInfo get_arg (GI.CallableInfo info, int n);
		public static GI.Transfer get_caller_owns (GI.CallableInfo info);
		public static GI.Transfer get_instance_ownership_transfer (GI.CallableInfo info);
		public static int get_n_args (GI.CallableInfo info);
		public static unowned string get_return_attribute (GI.CallableInfo info, string name);
		public static GI.TypeInfo get_return_type (GI.CallableInfo info);
		public static bool invoke (GI.CallableInfo info, void* function, GI.Argument in_args, int n_in_args, GI.Argument out_args, int n_out_args, GI.Argument return_value, bool is_method, bool @throws) throws GLib.Error;
		public static bool is_method (GI.CallableInfo info);
		public static bool iterate_return_attributes (GI.CallableInfo info, GI.AttributeIter iterator, out unowned string name, out unowned string value);
		public static void load_arg (GI.CallableInfo info, int n, out unowned GI.ArgInfo arg);
		public static void load_return_type (GI.CallableInfo info, out unowned GI.TypeInfo type);
		public static bool may_return_null (GI.CallableInfo info);
		public static bool skip_return (GI.CallableInfo info);
	}
	[CCode (cheader_filename = "girepository.h")]
	public class CallbackInfo : GI.BaseInfo {
		[CCode (has_construct_function = false)]
		protected CallbackInfo ();
	}
	[CCode (cheader_filename = "girepository.h")]
	public class ConstantInfo : GI.BaseInfo {
		[CCode (has_construct_function = false)]
		protected ConstantInfo ();
		public static GI.TypeInfo get_type (GI.ConstantInfo info);
	}
	[CCode (cheader_filename = "girepository.h")]
	public class EnumInfo : GI.BaseInfo {
		[CCode (has_construct_function = false)]
		protected EnumInfo ();
		public static unowned string get_error_domain (GI.EnumInfo info);
		public static GI.FunctionInfo get_method (GI.EnumInfo info, int n);
		public static int get_n_methods (GI.EnumInfo info);
		public static int get_n_values (GI.EnumInfo info);
		public static GI.TypeTag get_storage_type (GI.EnumInfo info);
		public static GI.ValueInfo get_value (GI.EnumInfo info, int n);
	}
	[CCode (cheader_filename = "girepository.h")]
	public class FieldInfo : GI.BaseInfo {
		[CCode (has_construct_function = false)]
		protected FieldInfo ();
		public static GI.FieldInfoFlags get_flags (GI.FieldInfo info);
		public static int get_offset (GI.FieldInfo info);
		public static int get_size (GI.FieldInfo info);
		public static GI.TypeInfo get_type (GI.FieldInfo info);
	}
	[CCode (cheader_filename = "girepository.h")]
	public class FunctionInfo : GI.BaseInfo {
		[CCode (has_construct_function = false)]
		protected FunctionInfo ();
		public static GI.FunctionInfoFlags get_flags (GI.FunctionInfo info);
		public static GI.PropertyInfo get_property (GI.FunctionInfo info);
		public static unowned string get_symbol (GI.FunctionInfo info);
		public static GI.VFuncInfo get_vfunc (GI.FunctionInfo info);
	}
	[CCode (cheader_filename = "girepository.h")]
	public class InterfaceInfo : GI.BaseInfo {
		[CCode (has_construct_function = false)]
		protected InterfaceInfo ();
		public static GI.FunctionInfo find_method (GI.InterfaceInfo info, string name);
		public static GI.SignalInfo find_signal (GI.InterfaceInfo info, string name);
		public static GI.VFuncInfo find_vfunc (GI.InterfaceInfo info, string name);
		public static GI.ConstantInfo get_constant (GI.InterfaceInfo info, int n);
		public static GI.StructInfo get_iface_struct (GI.InterfaceInfo info);
		public static GI.FunctionInfo get_method (GI.InterfaceInfo info, int n);
		public static int get_n_constants (GI.InterfaceInfo info);
		public static int get_n_methods (GI.InterfaceInfo info);
		public static int get_n_prerequisites (GI.InterfaceInfo info);
		public static int get_n_properties (GI.InterfaceInfo info);
		public static int get_n_signals (GI.InterfaceInfo info);
		public static int get_n_vfuncs (GI.InterfaceInfo info);
		public static GI.BaseInfo get_prerequisite (GI.InterfaceInfo info, int n);
		public static GI.PropertyInfo get_property (GI.InterfaceInfo info, int n);
		public static GI.SignalInfo get_signal (GI.InterfaceInfo info, int n);
		public static GI.VFuncInfo get_vfunc (GI.InterfaceInfo info, int n);
	}
	[CCode (cheader_filename = "girepository.h")]
	public class ObjectInfo : GI.BaseInfo {
		[CCode (has_construct_function = false)]
		protected ObjectInfo ();
		public static GI.FunctionInfo find_method (GI.ObjectInfo info, string name);
		public static GI.FunctionInfo find_method_using_interfaces (GI.ObjectInfo info, string name, out GI.ObjectInfo implementor);
		public static GI.SignalInfo find_signal (GI.ObjectInfo info, string name);
		public static GI.VFuncInfo find_vfunc (GI.ObjectInfo info, string name);
		public static GI.VFuncInfo find_vfunc_using_interfaces (GI.ObjectInfo info, string name, out GI.ObjectInfo implementor);
		public static bool get_abstract (GI.ObjectInfo info);
		public static GI.StructInfo get_class_struct (GI.ObjectInfo info);
		public static GI.ConstantInfo get_constant (GI.ObjectInfo info, int n);
		public static GI.FieldInfo get_field (GI.ObjectInfo info, int n);
		public static bool get_fundamental (GI.ObjectInfo info);
		public static unowned string get_get_value_function (GI.ObjectInfo info);
		public static GI.InterfaceInfo get_interface (GI.ObjectInfo info, int n);
		public static GI.FunctionInfo get_method (GI.ObjectInfo info, int n);
		public static int get_n_constants (GI.ObjectInfo info);
		public static int get_n_fields (GI.ObjectInfo info);
		public static int get_n_interfaces (GI.ObjectInfo info);
		public static int get_n_methods (GI.ObjectInfo info);
		public static int get_n_properties (GI.ObjectInfo info);
		public static int get_n_signals (GI.ObjectInfo info);
		public static int get_n_vfuncs (GI.ObjectInfo info);
		public static GI.ObjectInfo get_parent (GI.ObjectInfo info);
		public static GI.PropertyInfo get_property (GI.ObjectInfo info, int n);
		public static unowned string get_ref_function (GI.ObjectInfo info);
		public static unowned string get_set_value_function (GI.ObjectInfo info);
		public static GI.SignalInfo get_signal (GI.ObjectInfo info, int n);
		public static unowned string get_type_init (GI.ObjectInfo info);
		public static unowned string get_type_name (GI.ObjectInfo info);
		public static unowned string get_unref_function (GI.ObjectInfo info);
		public static GI.VFuncInfo get_vfunc (GI.ObjectInfo info, int n);
	}
	[CCode (cheader_filename = "girepository.h")]
	public class PropertyInfo : GI.BaseInfo {
		[CCode (has_construct_function = false)]
		protected PropertyInfo ();
		public static GLib.ParamFlags get_flags (GI.PropertyInfo info);
		public static GI.Transfer get_ownership_transfer (GI.PropertyInfo info);
		public static GI.TypeInfo get_type (GI.PropertyInfo info);
	}
	[CCode (cheader_filename = "girepository.h")]
	public class RegisteredTypeInfo : GI.BaseInfo {
		[CCode (has_construct_function = false)]
		protected RegisteredTypeInfo ();
		public static GLib.Type get_g_type (GI.RegisteredTypeInfo info);
		public static unowned string get_type_init (GI.RegisteredTypeInfo info);
		public static unowned string get_type_name (GI.RegisteredTypeInfo info);
	}
	[CCode (cheader_filename = "girepository.h", lower_case_csuffix = "irepository", type_id = "g_irepository_get_type ()")]
	public class Repository : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Repository ();
		public static bool dump (string arg) throws GLib.Error;
		public GLib.List<string> enumerate_versions (string namespace_);
		public static GLib.Quark error_quark ();
		public GI.EnumInfo find_by_error_domain (GLib.Quark domain);
		public GI.BaseInfo find_by_gtype (GLib.Type gtype);
		public GI.BaseInfo find_by_name (string namespace_, string name);
		public unowned string get_c_prefix (string namespace_);
		public static unowned GI.Repository get_default ();
		[CCode (array_length = false, array_null_terminated = true)]
		public string[] get_dependencies (string namespace_);
		[CCode (array_length = false, array_null_terminated = true)]
		public string[] get_immediate_dependencies (string namespace_);
		public GI.BaseInfo get_info (string namespace_, int index);
		[CCode (array_length = false, array_null_terminated = true)]
		public string[] get_loaded_namespaces ();
		public int get_n_infos (string namespace_);
		public static unowned GLib.SList<string> get_search_path ();
		public unowned string get_shared_library (string namespace_);
		public unowned string get_typelib_path (string namespace_);
		public unowned string get_version (string namespace_);
		public bool is_registered (string namespace_, string? version);
		public unowned string load_typelib (GI.Typelib typelib, GI.RepositoryLoadFlags flags) throws GLib.Error;
		public static void prepend_library_path (string directory);
		public static void prepend_search_path (string directory);
		public unowned GI.Typelib require (string namespace_, string? version, GI.RepositoryLoadFlags flags) throws GLib.Error;
		public unowned GI.Typelib require_private (string typelib_dir, string namespace_, string? version, GI.RepositoryLoadFlags flags) throws GLib.Error;
	}
	[CCode (cheader_filename = "girepository.h")]
	public class SignalInfo : GI.BaseInfo {
		[CCode (has_construct_function = false)]
		protected SignalInfo ();
		public static GI.VFuncInfo get_class_closure (GI.SignalInfo info);
		public static GLib.SignalFlags get_flags (GI.SignalInfo info);
		public static bool true_stops_emit (GI.SignalInfo info);
	}
	[CCode (cheader_filename = "girepository.h")]
	public class StructInfo : GI.BaseInfo {
		[CCode (has_construct_function = false)]
		protected StructInfo ();
		public static GI.FieldInfo find_field (GI.StructInfo info, string name);
		public static GI.FunctionInfo find_method (GI.StructInfo info, string name);
		public static size_t get_alignment (GI.StructInfo info);
		public static GI.FieldInfo get_field (GI.StructInfo info, int n);
		public static GI.FunctionInfo get_method (GI.StructInfo info, int n);
		public static int get_n_fields (GI.StructInfo info);
		public static int get_n_methods (GI.StructInfo info);
		public static size_t get_size (GI.StructInfo info);
		public static bool is_foreign (GI.StructInfo info);
		public static bool is_gtype_struct (GI.StructInfo info);
	}
	[CCode (cheader_filename = "girepository.h")]
	public class TypeInfo : GI.BaseInfo {
		[CCode (has_construct_function = false)]
		protected TypeInfo ();
		public static int get_array_fixed_size (GI.TypeInfo info);
		public static int get_array_length (GI.TypeInfo info);
		public static GI.ArrayType get_array_type (GI.TypeInfo info);
		public static GI.BaseInfo get_interface (GI.TypeInfo info);
		public static GI.TypeInfo get_param_type (GI.TypeInfo info, int n);
		public static GI.TypeTag get_tag (GI.TypeInfo info);
		public static bool is_pointer (GI.TypeInfo info);
		public static bool is_zero_terminated (GI.TypeInfo info);
	}
	[CCode (cheader_filename = "girepository.h")]
	[Compact]
	public class Typelib {
		public void free ();
		public unowned string get_namespace ();
		public bool symbol (string symbol_name, void* symbol);
	}
	[CCode (cheader_filename = "girepository.h")]
	public class UnionInfo : GI.BaseInfo {
		[CCode (has_construct_function = false)]
		protected UnionInfo ();
		public static GI.FunctionInfo find_method (GI.UnionInfo info, string name);
		public static size_t get_alignment (GI.UnionInfo info);
		public static GI.ConstantInfo get_discriminator (GI.UnionInfo info, int n);
		public static int get_discriminator_offset (GI.UnionInfo info);
		public static GI.TypeInfo get_discriminator_type (GI.UnionInfo info);
		public static GI.FieldInfo get_field (GI.UnionInfo info, int n);
		public static GI.FunctionInfo get_method (GI.UnionInfo info, int n);
		public static int get_n_fields (GI.UnionInfo info);
		public static int get_n_methods (GI.UnionInfo info);
		public static size_t get_size (GI.UnionInfo info);
		public static bool is_discriminated (GI.UnionInfo info);
	}
	[CCode (cheader_filename = "girepository.h")]
	[Compact]
	public class UnresolvedInfo {
	}
	[CCode (cheader_filename = "girepository.h")]
	public class VFuncInfo : GI.BaseInfo {
		[CCode (has_construct_function = false)]
		protected VFuncInfo ();
		public static void* get_address (GI.VFuncInfo info, GLib.Type implementor_gtype) throws GLib.Error;
		public static GI.VFuncInfoFlags get_flags (GI.VFuncInfo info);
		public static GI.FunctionInfo get_invoker (GI.VFuncInfo info);
		public static int get_offset (GI.VFuncInfo info);
		public static GI.SignalInfo get_signal (GI.VFuncInfo info);
	}
	[CCode (cheader_filename = "girepository.h")]
	public class ValueInfo : GI.BaseInfo {
		[CCode (has_construct_function = false)]
		protected ValueInfo ();
		public static int64 get_value (GI.ValueInfo info);
	}
	[CCode (cheader_filename = "girepository.h")]
	public struct Argument {
		public bool v_boolean;
		public int8 v_int8;
		public uint8 v_uint8;
		public int16 v_int16;
		public uint16 v_uint16;
		public int32 v_int32;
		public uint32 v_uint32;
		public int64 v_int64;
		public uint64 v_uint64;
		public float v_float;
		public double v_double;
		public short v_short;
		public ushort v_ushort;
		public int v_int;
		public uint v_uint;
		public long v_long;
		public ulong v_ulong;
		public ssize_t v_ssize;
		public size_t v_size;
		public weak string v_string;
		public void* v_pointer;
	}
	[CCode (cheader_filename = "girepository.h", has_type_id = false)]
	public struct AttributeIter {
	}
	[CCode (cheader_filename = "girepository.h", cprefix = "GI_ARRAY_TYPE_", has_type_id = false)]
	public enum ArrayType {
		C,
		ARRAY,
		PTR_ARRAY,
		BYTE_ARRAY
	}
	[CCode (cheader_filename = "girepository.h", cprefix = "GI_DIRECTION_", has_type_id = false)]
	public enum Direction {
		IN,
		OUT,
		INOUT
	}
	[CCode (cheader_filename = "girepository.h", cprefix = "GI_FIELD_IS_", has_type_id = false)]
	[Flags]
	public enum FieldInfoFlags {
		READABLE,
		WRITABLE
	}
	[CCode (cheader_filename = "girepository.h", cprefix = "GI_FUNCTION_", has_type_id = false)]
	[Flags]
	public enum FunctionInfoFlags {
		IS_METHOD,
		IS_CONSTRUCTOR,
		IS_GETTER,
		IS_SETTER,
		WRAPS_VFUNC,
		THROWS
	}
	[CCode (cheader_filename = "girepository.h", cprefix = "GI_INFO_TYPE_", has_type_id = false)]
	public enum InfoType {
		INVALID,
		FUNCTION,
		CALLBACK,
		STRUCT,
		BOXED,
		ENUM,
		FLAGS,
		OBJECT,
		INTERFACE,
		CONSTANT,
		INVALID_0,
		UNION,
		VALUE,
		SIGNAL,
		VFUNC,
		PROPERTY,
		FIELD,
		ARG,
		TYPE,
		UNRESOLVED;
		public static unowned string to_string (GI.InfoType type);
	}
	[CCode (cheader_filename = "girepository.h", cprefix = "G_IREPOSITORY_ERROR_", has_type_id = false)]
	public enum RepositoryError {
		TYPELIB_NOT_FOUND,
		NAMESPACE_MISMATCH,
		NAMESPACE_VERSION_CONFLICT,
		LIBRARY_NOT_FOUND
	}
	[CCode (cheader_filename = "girepository.h", cprefix = "G_IREPOSITORY_LOAD_FLAG_", has_type_id = false)]
	[Flags]
	public enum RepositoryLoadFlags {
		[CCode (cname = "G_IREPOSITORY_LOAD_FLAG_LAZY")]
		IREPOSITORY_LOAD_FLAG_LAZY
	}
	[CCode (cheader_filename = "girepository.h", cprefix = "GI_SCOPE_TYPE_", has_type_id = false)]
	public enum ScopeType {
		INVALID,
		CALL,
		ASYNC,
		NOTIFIED
	}
	[CCode (cheader_filename = "girepository.h", cprefix = "GI_TRANSFER_", has_type_id = false)]
	public enum Transfer {
		NOTHING,
		CONTAINER,
		EVERYTHING
	}
	[CCode (cheader_filename = "girepository.h", cprefix = "GI_TYPE_TAG_", has_type_id = false)]
	public enum TypeTag {
		VOID,
		BOOLEAN,
		INT8,
		UINT8,
		INT16,
		UINT16,
		INT32,
		UINT32,
		INT64,
		UINT64,
		FLOAT,
		DOUBLE,
		GTYPE,
		UTF8,
		FILENAME,
		ARRAY,
		INTERFACE,
		GLIST,
		GSLIST,
		GHASH,
		ERROR,
		UNICHAR;
		public static unowned string to_string (GI.TypeTag type);
	}
	[CCode (cheader_filename = "girepository.h", cprefix = "GI_VFUNC_", has_type_id = false)]
	[Flags]
	public enum VFuncInfoFlags {
		MUST_CHAIN_UP,
		MUST_OVERRIDE,
		MUST_NOT_OVERRIDE,
		THROWS
	}
	[CCode (cheader_filename = "girepository.h", cprefix = "G_INVOKE_ERROR_", has_type_id = false)]
	public enum nvokeError {
		FAILED,
		SYMBOL_NOT_FOUND,
		ARGUMENT_MISMATCH
	}
	[CCode (cheader_filename = "girepository.h")]
	public static GI.BaseInfo info_new (GI.InfoType type, GI.BaseInfo container, GI.Typelib typelib, uint32 offset);
	[CCode (cheader_filename = "girepository.h")]
	public static GLib.Quark invoke_error_quark ();
}
