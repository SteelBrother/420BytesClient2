; ModuleID = 'obj\Release\net7.0-android\android\environment.x86_64.ll'
source_filename = "obj\Release\net7.0-android\android\environment.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


%struct.ApplicationConfig = type {
	i8,; bool uses_mono_llvm
	i8,; bool uses_mono_aot
	i8,; bool aot_lazy_load
	i8,; bool uses_assembly_preload
	i8,; bool is_a_bundled_app
	i8,; bool broken_exception_transitions
	i8,; bool instant_run_enabled
	i8,; bool jni_add_native_method_registration_attribute_present
	i8,; bool have_runtime_config_blob
	i8,; bool have_assemblies_blob
	i8,; uint8_t bound_stream_io_exception_type
	i32,; uint32_t package_naming_policy
	i32,; uint32_t environment_variable_count
	i32,; uint32_t system_property_count
	i32,; uint32_t number_of_assemblies_in_apk
	i32,; uint32_t bundled_assembly_name_width
	i32,; uint32_t number_of_assembly_store_files
	i32,; uint32_t number_of_dso_cache_entries
	i32,; uint32_t android_runtime_jnienv_class_token
	i32,; uint32_t jnienv_initialize_method_token
	i32,; uint32_t jnienv_registerjninatives_method_token
	i32,; uint32_t jni_remapping_replacement_type_count
	i32,; uint32_t jni_remapping_replacement_method_index_entry_count
	i32,; uint32_t mono_components_mask
	i8*; char* android_package_name
}

%struct.AssemblyStoreAssemblyDescriptor = type {
	i32,; uint32_t data_offset
	i32,; uint32_t data_size
	i32,; uint32_t debug_data_offset
	i32,; uint32_t debug_data_size
	i32,; uint32_t config_data_offset
	i32; uint32_t config_data_size
}

%struct.AssemblyStoreSingleAssemblyRuntimeData = type {
	i8*,; uint8_t* image_data
	i8*,; uint8_t* debug_info_data
	i8*,; uint8_t* config_data
	%struct.AssemblyStoreAssemblyDescriptor*; AssemblyStoreAssemblyDescriptor* descriptor
}

%struct.AssemblyStoreRuntimeData = type {
	i8*,; uint8_t* data_start
	i32,; uint32_t assembly_count
	%struct.AssemblyStoreAssemblyDescriptor*; AssemblyStoreAssemblyDescriptor* assemblies
}

%struct.XamarinAndroidBundledAssembly = type {
	i32,; int32_t apk_fd
	i32,; uint32_t data_offset
	i32,; uint32_t data_size
	i8*,; uint8_t* data
	i32,; uint32_t name_length
	i8*; char* name
}

%struct.DSOCacheEntry = type {
	i64,; uint64_t hash
	i8,; bool ignore
	i8*,; char* name
	i8*; void* handle
}

@format_tag = local_unnamed_addr constant i64 385281960275288, align 8
@__mono_aot_mode_name = internal constant [7 x i8] c"normal\00", align 1
@mono_aot_mode_name = local_unnamed_addr constant i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__mono_aot_mode_name, i64 0, i64 0), align 8

; app_environment_variables
@__app_environment_variables_n_0.0 = internal constant [15 x i8] c"MONO_GC_PARAMS\00", align 1
@__app_environment_variables_v_0.1 = internal constant [21 x i8] c"major=marksweep-conc\00", align 16
@__app_environment_variables_n_1.2 = internal constant [17 x i8] c"XAMARIN_BUILD_ID\00", align 16
@__app_environment_variables_v_1.3 = internal constant [37 x i8] c"9a1ff495-d61c-4b93-9f99-45f3397a749a\00", align 16
@__app_environment_variables_n_2.4 = internal constant [28 x i8] c"XA_HTTP_CLIENT_HANDLER_TYPE\00", align 16
@__app_environment_variables_v_2.5 = internal constant [42 x i8] c"Xamarin.Android.Net.AndroidMessageHandler\00", align 16
@__app_environment_variables_n_3.6 = internal constant [29 x i8] c"__XA_PACKAGE_NAMING_POLICY__\00", align 16
@__app_environment_variables_v_3.7 = internal constant [15 x i8] c"LowercaseCrc64\00", align 1

@app_environment_variables = local_unnamed_addr constant [8 x i8*] [
	i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__app_environment_variables_n_0.0, i32 0, i32 0),
	i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__app_environment_variables_v_0.1, i32 0, i32 0),
	i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__app_environment_variables_n_1.2, i32 0, i32 0),
	i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__app_environment_variables_v_1.3, i32 0, i32 0),
	i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__app_environment_variables_n_2.4, i32 0, i32 0),
	i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__app_environment_variables_v_2.5, i32 0, i32 0),
	i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__app_environment_variables_n_3.6, i32 0, i32 0),
	i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__app_environment_variables_v_3.7, i32 0, i32 0)
], align 16

; app_system_properties
@app_system_properties = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__ApplicationConfig_android_package_name.0 = internal constant [37 x i8] c"com.companyname.x_420bytesclient.app\00", align 16

; application_config
@application_config = local_unnamed_addr constant %struct.ApplicationConfig {
	i8 0, ; uses_mono_llvm
	i8 1, ; uses_mono_aot
	i8 1, ; aot_lazy_load
	i8 0, ; uses_assembly_preload
	i8 0, ; is_a_bundled_app
	i8 0, ; broken_exception_transitions
	i8 0, ; instant_run_enabled
	i8 0, ; jni_add_native_method_registration_attribute_present
	i8 1, ; have_runtime_config_blob
	i8 1, ; have_assemblies_blob
	i8 0, ; bound_stream_io_exception_type
	i32 3, ; package_naming_policy
	i32 8, ; environment_variable_count
	i32 0, ; system_property_count
	i32 206, ; number_of_assemblies_in_apk
	i32 0, ; bundled_assembly_name_width
	i32 2, ; number_of_assembly_store_files
	i32 1256, ; number_of_dso_cache_entries
	i32 33555278, ; android_runtime_jnienv_class_token
	i32 100672266, ; jnienv_initialize_method_token
	i32 100672265, ; jnienv_registerjninatives_method_token
	i32 0, ; jni_remapping_replacement_type_count
	i32 0, ; jni_remapping_replacement_method_index_entry_count
	i32 0, ; mono_components_mask
	i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__ApplicationConfig_android_package_name.0, i32 0, i32 0); android_package_name
}, align 8

@__DSOCacheEntry_name.1 = internal constant [29 x i8] c"libaot-System.Buffers.dll.so\00", align 16
@__DSOCacheEntry_name.2 = internal constant [33 x i8] c"libaot-420BytesClient.App.dll.so\00", align 16
@__DSOCacheEntry_name.3 = internal constant [40 x i8] c"libaot-Xamarin.AndroidX.CardView.dll.so\00", align 16
@__DSOCacheEntry_name.4 = internal constant [43 x i8] c"libaot-System.Net.WebSockets.Client.dll.so\00", align 16
@__DSOCacheEntry_name.5 = internal constant [40 x i8] c"libaot-System.Threading.Channels.dll.so\00", align 16
@__DSOCacheEntry_name.6 = internal constant [40 x i8] c"libaot-Microsoft.Extensions.Http.dll.so\00", align 16
@__DSOCacheEntry_name.7 = internal constant [27 x i8] c"libaot-Mono.Android.dll.so\00", align 16
@__DSOCacheEntry_name.8 = internal constant [46 x i8] c"libaot-Microsoft.Extensions.Primitives.dll.so\00", align 16
@__DSOCacheEntry_name.9 = internal constant [50 x i8] c"libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so\00", align 16
@__DSOCacheEntry_name.10 = internal constant [56 x i8] c"libaot-Microsoft.Extensions.Hosting.Abstractions.dll.so\00", align 16
@__DSOCacheEntry_name.11 = internal constant [48 x i8] c"libaot-Microsoft.AspNetCore.WebUtilities.dll.so\00", align 16
@__DSOCacheEntry_name.12 = internal constant [38 x i8] c"libaot-System.Threading.Thread.dll.so\00", align 16
@__DSOCacheEntry_name.13 = internal constant [38 x i8] c"libaot-Microsoft.Maui.Graphics.dll.so\00", align 16
@__DSOCacheEntry_name.14 = internal constant [49 x i8] c"libaot-Microsoft.Extensions.Configuration.dll.so\00", align 16
@__DSOCacheEntry_name.15 = internal constant [24 x i8] c"libaot-System.IO.dll.so\00", align 16
@__DSOCacheEntry_name.16 = internal constant [44 x i8] c"libaot-Syncfusion.Blazor.Navigations.dll.so\00", align 16
@__DSOCacheEntry_name.17 = internal constant [36 x i8] c"libaot-System.Net.Primitives.dll.so\00", align 16
@__DSOCacheEntry_name.18 = internal constant [49 x i8] c"libaot-Xamarin.AndroidX.Navigation.Common.dll.so\00", align 16
@__DSOCacheEntry_name.19 = internal constant [46 x i8] c"libaot-Xamarin.Google.Android.Material.dll.so\00", align 16
@__DSOCacheEntry_name.20 = internal constant [30 x i8] c"libaot-Newtonsoft.Json.dll.so\00", align 16
@__DSOCacheEntry_name.21 = internal constant [29 x i8] c"libaot-System.Console.dll.so\00", align 16
@__DSOCacheEntry_name.22 = internal constant [35 x i8] c"libaot-System.Linq.Parallel.dll.so\00", align 16
@__DSOCacheEntry_name.23 = internal constant [46 x i8] c"libaot-Microsoft.IdentityModel.Logging.dll.so\00", align 16
@__DSOCacheEntry_name.24 = internal constant [54 x i8] c"libaot-System.Security.Cryptography.Algorithms.dll.so\00", align 16
@__DSOCacheEntry_name.25 = internal constant [37 x i8] c"libaot-System.Web.HttpUtility.dll.so\00", align 16
@__DSOCacheEntry_name.26 = internal constant [29 x i8] c"libaot-Microsoft.Maui.dll.so\00", align 16
@__DSOCacheEntry_name.27 = internal constant [24 x i8] c"libaot-MatBlazor.dll.so\00", align 16
@__DSOCacheEntry_name.28 = internal constant [49 x i8] c"libaot-Xamarin.Google.Crypto.Tink.Android.dll.so\00", align 16
@__DSOCacheEntry_name.29 = internal constant [37 x i8] c"libaot-System.Threading.Tasks.dll.so\00", align 16
@__DSOCacheEntry_name.30 = internal constant [36 x i8] c"libaot-System.ComponentModel.dll.so\00", align 16
@__DSOCacheEntry_name.31 = internal constant [44 x i8] c"libaot-Xamarin.AndroidX.RecyclerView.dll.so\00", align 16
@__DSOCacheEntry_name.32 = internal constant [43 x i8] c"libaot-System.Reflection.Extensions.dll.so\00", align 16
@__DSOCacheEntry_name.33 = internal constant [46 x i8] c"libaot-System.Text.Encoding.Extensions.dll.so\00", align 16
@__DSOCacheEntry_name.34 = internal constant [50 x i8] c"libaot-Microsoft.AspNetCore.Components.Web.dll.so\00", align 16
@__DSOCacheEntry_name.35 = internal constant [43 x i8] c"libaot-System.Reflection.Primitives.dll.so\00", align 16
@__DSOCacheEntry_name.36 = internal constant [31 x i8] c"libaot-Microsoft.CSharp.dll.so\00", align 16
@__DSOCacheEntry_name.37 = internal constant [40 x i8] c"libaot-System.Net.NameResolution.dll.so\00", align 16
@__DSOCacheEntry_name.38 = internal constant [45 x i8] c"libaot-System.Text.RegularExpressions.dll.so\00", align 16
@__DSOCacheEntry_name.39 = internal constant [33 x i8] c"libaot-System.ObjectModel.dll.so\00", align 16
@__DSOCacheEntry_name.40 = internal constant [36 x i8] c"libaot-System.Net.WebSockets.dll.so\00", align 16
@__DSOCacheEntry_name.41 = internal constant [58 x i8] c"libaot-Microsoft.AspNetCore.SignalR.Protocols.Json.dll.so\00", align 16
@__DSOCacheEntry_name.42 = internal constant [37 x i8] c"libaot-Syncfusion.Blazor.Core.dll.so\00", align 16
@__DSOCacheEntry_name.43 = internal constant [35 x i8] c"libaot-Syncfusion.Licensing.dll.so\00", align 16
@__DSOCacheEntry_name.44 = internal constant [36 x i8] c"libaot-System.IO.Compression.dll.so\00", align 16
@__DSOCacheEntry_name.45 = internal constant [58 x i8] c"libaot-Microsoft.Extensions.FileProviders.Embedded.dll.so\00", align 16
@__DSOCacheEntry_name.46 = internal constant [34 x i8] c"libaot-System.IO.Pipelines.dll.so\00", align 16
@__DSOCacheEntry_name.47 = internal constant [45 x i8] c"libaot-Xamarin.AndroidX.CursorAdapter.dll.so\00", align 16
@__DSOCacheEntry_name.48 = internal constant [55 x i8] c"libaot-System.Private.DataContractSerialization.dll.so\00", align 16
@__DSOCacheEntry_name.49 = internal constant [36 x i8] c"libaot-Xamarin.AndroidX.Core.dll.so\00", align 16
@__DSOCacheEntry_name.50 = internal constant [43 x i8] c"libaot-System.Security.Cryptography.dll.so\00", align 16
@__DSOCacheEntry_name.51 = internal constant [59 x i8] c"libaot-Microsoft.AspNetCore.Http.Connections.Client.dll.so\00", align 16
@__DSOCacheEntry_name.52 = internal constant [48 x i8] c"libaot-System.ComponentModel.Annotations.dll.so\00", align 16
@__DSOCacheEntry_name.53 = internal constant [63 x i8] c"libaot-Microsoft.AspNetCore.Hosting.Server.Abstractions.dll.so\00", align 16
@__DSOCacheEntry_name.54 = internal constant [44 x i8] c"libaot-Xamarin.AndroidX.DrawerLayout.dll.so\00", align 16
@__DSOCacheEntry_name.55 = internal constant [60 x i8] c"libaot-Microsoft.AspNetCore.Connections.Abstractions.dll.so\00", align 16
@__DSOCacheEntry_name.56 = internal constant [40 x i8] c"libaot-System.Runtime.Extensions.dll.so\00", align 16
@__DSOCacheEntry_name.57 = internal constant [60 x i8] c"libaot-Microsoft.AspNetCore.Components.Authorization.dll.so\00", align 16
@__DSOCacheEntry_name.58 = internal constant [27 x i8] c"libaot-Java.Interop.dll.so\00", align 16
@__DSOCacheEntry_name.59 = internal constant [48 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so\00", align 16
@__DSOCacheEntry_name.60 = internal constant [34 x i8] c"libaot-Microsoft.JSInterop.dll.so\00", align 16
@__DSOCacheEntry_name.61 = internal constant [59 x i8] c"libaot-Microsoft.AspNetCore.Http.Connections.Common.dll.so\00", align 16
@__DSOCacheEntry_name.62 = internal constant [56 x i8] c"libaot-Microsoft.AspNetCore.Hosting.Abstractions.dll.so\00", align 16
@__DSOCacheEntry_name.63 = internal constant [45 x i8] c"libaot-Syncfusion.Blazor.SplitButtons.dll.so\00", align 16
@__DSOCacheEntry_name.64 = internal constant [38 x i8] c"libaot-System.Linq.Expressions.dll.so\00", align 16
@__DSOCacheEntry_name.65 = internal constant [33 x i8] c"libaot-System.Collections.dll.so\00", align 16
@__DSOCacheEntry_name.66 = internal constant [52 x i8] c"libaot-Microsoft.Maui.Controls.Compatibility.dll.so\00", align 16
@__DSOCacheEntry_name.67 = internal constant [36 x i8] c"libaot-Xamarin.Kotlin.StdLib.dll.so\00", align 16
@__DSOCacheEntry_name.68 = internal constant [47 x i8] c"libaot-System.ComponentModel.Primitives.dll.so\00", align 16
@__DSOCacheEntry_name.69 = internal constant [42 x i8] c"libaot-Xamarin.AndroidX.Collection.dll.so\00", align 16
@__DSOCacheEntry_name.70 = internal constant [38 x i8] c"libaot-System.Runtime.Numerics.dll.so\00", align 16
@__DSOCacheEntry_name.71 = internal constant [26 x i8] c"libaot-netstandard.dll.so\00", align 16
@__DSOCacheEntry_name.72 = internal constant [37 x i8] c"libaot-System.Security.Claims.dll.so\00", align 16
@__DSOCacheEntry_name.73 = internal constant [39 x i8] c"libaot-System.Diagnostics.Debug.dll.so\00", align 16
@__DSOCacheEntry_name.74 = internal constant [41 x i8] c"libaot-Xamarin.AndroidX.ViewPager.dll.so\00", align 16
@__DSOCacheEntry_name.75 = internal constant [41 x i8] c"libaot-Syncfusion.ExcelExport.Net.dll.so\00", align 16
@__DSOCacheEntry_name.76 = internal constant [53 x i8] c"libaot-System.Runtime.CompilerServices.Unsafe.dll.so\00", align 16
@__DSOCacheEntry_name.77 = internal constant [41 x i8] c"libaot-Xamarin.AndroidX.AppCompat.dll.so\00", align 16
@__DSOCacheEntry_name.78 = internal constant [50 x i8] c"libaot-System.Reflection.Emit.ILGeneration.dll.so\00", align 16
@__DSOCacheEntry_name.79 = internal constant [58 x i8] c"libaot-Microsoft.Extensions.FileProviders.Physical.dll.so\00", align 16
@__DSOCacheEntry_name.80 = internal constant [41 x i8] c"libaot-Microsoft.Net.Http.Headers.dll.so\00", align 16
@__DSOCacheEntry_name.81 = internal constant [50 x i8] c"libSystem.Security.Cryptography.Native.Android.so\00", align 16
@__DSOCacheEntry_name.82 = internal constant [46 x i8] c"libaot-Microsoft.AspNetCore.Components.dll.so\00", align 16
@__DSOCacheEntry_name.83 = internal constant [54 x i8] c"libaot-Microsoft.Extensions.FileSystemGlobbing.dll.so\00", align 16
@__DSOCacheEntry_name.84 = internal constant [44 x i8] c"libaot-System.Collections.NonGeneric.dll.so\00", align 16
@__DSOCacheEntry_name.85 = internal constant [40 x i8] c"libaot-Syncfusion.Blazor.Buttons.dll.so\00", align 16
@__DSOCacheEntry_name.86 = internal constant [55 x i8] c"libaot-Microsoft.AspNetCore.SignalR.Client.Core.dll.so\00", align 16
@__DSOCacheEntry_name.87 = internal constant [24 x i8] c"libaot-MudBlazor.dll.so\00", align 16
@__DSOCacheEntry_name.88 = internal constant [39 x i8] c"libaot-Syncfusion.Blazor.Inputs.dll.so\00", align 16
@__DSOCacheEntry_name.89 = internal constant [42 x i8] c"libaot-Xamarin.AndroidX.ViewPager2.dll.so\00", align 16
@__DSOCacheEntry_name.90 = internal constant [62 x i8] c"libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so\00", align 16
@__DSOCacheEntry_name.91 = internal constant [42 x i8] c"libaot-Xamarin.AndroidX.SavedState.dll.so\00", align 16
@__DSOCacheEntry_name.92 = internal constant [59 x i8] c"libaot-Microsoft.Extensions.FileProviders.Composite.dll.so\00", align 16
@__DSOCacheEntry_name.93 = internal constant [32 x i8] c"libaot-System.Reflection.dll.so\00", align 16
@__DSOCacheEntry_name.94 = internal constant [55 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so\00", align 16
@__DSOCacheEntry_name.95 = internal constant [55 x i8] c"libaot-Xamarin.AndroidX.Security.SecurityCrypto.dll.so\00", align 16
@__DSOCacheEntry_name.96 = internal constant [43 x i8] c"libaot-Microsoft.Maui.Controls.Xaml.dll.so\00", align 16
@__DSOCacheEntry_name.97 = internal constant [52 x i8] c"libaot-Microsoft.DotNet.PlatformAbstractions.dll.so\00", align 16
@__DSOCacheEntry_name.98 = internal constant [50 x i8] c"libaot-System.ComponentModel.TypeConverter.dll.so\00", align 16
@__DSOCacheEntry_name.99 = internal constant [50 x i8] c"libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so\00", align 16
@__DSOCacheEntry_name.100 = internal constant [48 x i8] c"libaot-Microsoft.Extensions.Localization.dll.so\00", align 16
@__DSOCacheEntry_name.101 = internal constant [43 x i8] c"libaot-Microsoft.Extensions.Options.dll.so\00", align 16
@__DSOCacheEntry_name.102 = internal constant [40 x i8] c"libaot-Syncfusion.Blazor.Spinner.dll.so\00", align 16
@__DSOCacheEntry_name.103 = internal constant [47 x i8] c"libaot-System.Resources.ResourceManager.dll.so\00", align 16
@__DSOCacheEntry_name.104 = internal constant [44 x i8] c"libaot-System.Collections.Concurrent.dll.so\00", align 16
@__DSOCacheEntry_name.105 = internal constant [50 x i8] c"libaot-System.Diagnostics.DiagnosticSource.dll.so\00", align 16
@__DSOCacheEntry_name.106 = internal constant [43 x i8] c"libaot-System.IO.FileSystem.Watcher.dll.so\00", align 16
@__DSOCacheEntry_name.107 = internal constant [55 x i8] c"libaot-Microsoft.Extensions.DependencyInjection.dll.so\00", align 16
@__DSOCacheEntry_name.108 = internal constant [32 x i8] c"libaot-System.AppContext.dll.so\00", align 16
@__DSOCacheEntry_name.109 = internal constant [49 x i8] c"libaot-Microsoft.AspNetCore.Authorization.dll.so\00", align 16
@__DSOCacheEntry_name.110 = internal constant [40 x i8] c"libaot-System.Text.Encodings.Web.dll.so\00", align 16
@__DSOCacheEntry_name.111 = internal constant [46 x i8] c"libaot-System.IdentityModel.Tokens.Jwt.dll.so\00", align 16
@__DSOCacheEntry_name.112 = internal constant [28 x i8] c"libaot-System.Memory.dll.so\00", align 16
@__DSOCacheEntry_name.113 = internal constant [49 x i8] c"libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so\00", align 16
@__DSOCacheEntry_name.114 = internal constant [29 x i8] c"libaot-System.Runtime.dll.so\00", align 16
@__DSOCacheEntry_name.115 = internal constant [31 x i8] c"libaot-System.Threading.dll.so\00", align 16
@__DSOCacheEntry_name.116 = internal constant [64 x i8] c"libaot-System.Runtime.InteropServices.RuntimeInformation.dll.so\00", align 16
@__DSOCacheEntry_name.117 = internal constant [50 x i8] c"libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so\00", align 16
@__DSOCacheEntry_name.118 = internal constant [54 x i8] c"libaot-System.Runtime.Serialization.Primitives.dll.so\00", align 16
@__DSOCacheEntry_name.119 = internal constant [51 x i8] c"libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so\00", align 16
@__DSOCacheEntry_name.120 = internal constant [55 x i8] c"libaot-Microsoft.AspNetCore.Authentication.Core.dll.so\00", align 16
@__DSOCacheEntry_name.121 = internal constant [38 x i8] c"libaot-System.Numerics.Vectors.dll.so\00", align 16
@__DSOCacheEntry_name.122 = internal constant [44 x i8] c"libaot-System.Net.NetworkInformation.dll.so\00", align 16
@__DSOCacheEntry_name.123 = internal constant [54 x i8] c"libaot-System.Security.Cryptography.Primitives.dll.so\00", align 16
@__DSOCacheEntry_name.124 = internal constant [21 x i8] c"libaot-System.dll.so\00", align 16
@__DSOCacheEntry_name.125 = internal constant [45 x i8] c"libaot-System.Collections.Specialized.dll.so\00", align 16
@__DSOCacheEntry_name.126 = internal constant [56 x i8] c"libaot-Microsoft.AspNetCore.Authorization.Policy.dll.so\00", align 16
@__DSOCacheEntry_name.127 = internal constant [54 x i8] c"libaot-System.Runtime.Serialization.Formatters.dll.so\00", align 16
@__DSOCacheEntry_name.128 = internal constant [38 x i8] c"libaot-Syncfusion.Blazor.Lists.dll.so\00", align 16
@__DSOCacheEntry_name.129 = internal constant [52 x i8] c"libaot-System.Security.Cryptography.Encoding.dll.so\00", align 16
@__DSOCacheEntry_name.130 = internal constant [47 x i8] c"libaot-System.Runtime.Serialization.Xml.dll.so\00", align 16
@__DSOCacheEntry_name.131 = internal constant [44 x i8] c"libaot-Microsoft.AspNetCore.Mvc.Core.dll.so\00", align 16
@__DSOCacheEntry_name.132 = internal constant [38 x i8] c"libaot-Microsoft.Maui.Controls.dll.so\00", align 16
@__DSOCacheEntry_name.133 = internal constant [30 x i8] c"libaot-System.Xml.Linq.dll.so\00", align 16
@__DSOCacheEntry_name.134 = internal constant [40 x i8] c"libaot-Microsoft.Maui.Essentials.dll.so\00", align 16
@__DSOCacheEntry_name.135 = internal constant [62 x i8] c"libaot-Microsoft.Extensions.FileProviders.Abstractions.dll.so\00", align 16
@__DSOCacheEntry_name.136 = internal constant [44 x i8] c"libaot-Microsoft.AspNetCore.Metadata.dll.so\00", align 16
@__DSOCacheEntry_name.137 = internal constant [43 x i8] c"libaot-Microsoft.AspNetCore.Routing.dll.so\00", align 16
@__DSOCacheEntry_name.138 = internal constant [33 x i8] c"libaot-System.Net.Sockets.dll.so\00", align 16
@__DSOCacheEntry_name.139 = internal constant [43 x i8] c"libaot-System.IO.Compression.Brotli.dll.so\00", align 16
@__DSOCacheEntry_name.140 = internal constant [60 x i8] c"libaot-System.Security.Cryptography.X509Certificates.dll.so\00", align 16
@__DSOCacheEntry_name.141 = internal constant [38 x i8] c"libaot-System.Xml.ReaderWriter.dll.so\00", align 16
@__DSOCacheEntry_name.142 = internal constant [49 x i8] c"libaot-System.Reflection.Emit.Lightweight.dll.so\00", align 16
@__DSOCacheEntry_name.143 = internal constant [40 x i8] c"libaot-Microsoft.AspNetCore.Http.dll.so\00", align 16
@__DSOCacheEntry_name.144 = internal constant [37 x i8] c"libaot-System.Private.CoreLib.dll.so\00", align 16
@__DSOCacheEntry_name.145 = internal constant [34 x i8] c"libaot-System.Net.Requests.dll.so\00", align 16
@__DSOCacheEntry_name.146 = internal constant [52 x i8] c"libaot-Microsoft.AspNetCore.Mvc.Abstractions.dll.so\00", align 16
@__DSOCacheEntry_name.147 = internal constant [46 x i8] c"libaot-Microsoft.Extensions.ObjectPool.dll.so\00", align 16
@__DSOCacheEntry_name.148 = internal constant [47 x i8] c"libaot-System.Security.Cryptography.Csp.dll.so\00", align 16
@__DSOCacheEntry_name.149 = internal constant [42 x i8] c"libaot-Syncfusion.Blazor.Calendars.dll.so\00", align 16
@__DSOCacheEntry_name.150 = internal constant [45 x i8] c"libaot-System.Net.WebHeaderCollection.dll.so\00", align 16
@__DSOCacheEntry_name.151 = internal constant [42 x i8] c"libaot-System.Threading.ThreadPool.dll.so\00", align 16
@__DSOCacheEntry_name.152 = internal constant [51 x i8] c"libaot-Microsoft.IdentityModel.Abstractions.dll.so\00", align 16
@__DSOCacheEntry_name.153 = internal constant [50 x i8] c"libaot-Microsoft.AspNetCore.SignalR.Client.dll.so\00", align 16
@__DSOCacheEntry_name.154 = internal constant [48 x i8] c"libaot-System.Threading.Tasks.Extensions.dll.so\00", align 16
@__DSOCacheEntry_name.155 = internal constant [63 x i8] c"libaot-Microsoft.AspNetCore.Authentication.Abstractions.dll.so\00", align 16
@__DSOCacheEntry_name.156 = internal constant [32 x i8] c"libaot-420BytesClient.DT.dll.so\00", align 16
@__DSOCacheEntry_name.157 = internal constant [51 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so\00", align 16
@__DSOCacheEntry_name.158 = internal constant [46 x i8] c"libaot-System.IO.FileSystem.Primitives.dll.so\00", align 16
@__DSOCacheEntry_name.159 = internal constant [52 x i8] c"libaot-Microsoft.AspNetCore.Components.Forms.dll.so\00", align 16
@__DSOCacheEntry_name.160 = internal constant [42 x i8] c"libaot-Syncfusion.Blazor.DropDowns.dll.so\00", align 16
@__DSOCacheEntry_name.161 = internal constant [50 x i8] c"libaot-Microsoft.AspNetCore.SignalR.Common.dll.so\00", align 16
@__DSOCacheEntry_name.162 = internal constant [39 x i8] c"libaot-Syncfusion.Blazor.Popups.dll.so\00", align 16
@__DSOCacheEntry_name.163 = internal constant [38 x i8] c"libaot-Xamarin.AndroidX.Loader.dll.so\00", align 16
@__DSOCacheEntry_name.164 = internal constant [38 x i8] c"libaot-System.Private.Xml.Linq.dll.so\00", align 16
@__DSOCacheEntry_name.165 = internal constant [53 x i8] c"libaot-Microsoft.AspNetCore.Http.Abstractions.dll.so\00", align 16
@__DSOCacheEntry_name.166 = internal constant [35 x i8] c"libaot-System.IO.FileSystem.dll.so\00", align 16
@__DSOCacheEntry_name.167 = internal constant [64 x i8] c"libaot-Microsoft.AspNetCore.ResponseCaching.Abstractions.dll.so\00", align 16
@__DSOCacheEntry_name.168 = internal constant [45 x i8] c"libaot-System.Runtime.InteropServices.dll.so\00", align 16
@__DSOCacheEntry_name.169 = internal constant [40 x i8] c"libaot-Xamarin.AndroidX.Activity.dll.so\00", align 16
@__DSOCacheEntry_name.170 = internal constant [49 x i8] c"libaot-Microsoft.AspNetCore.Http.Features.dll.so\00", align 16
@__DSOCacheEntry_name.171 = internal constant [47 x i8] c"libaot-System.Security.Cryptography.Cng.dll.so\00", align 16
@__DSOCacheEntry_name.172 = internal constant [38 x i8] c"libaot-Xamarin.AndroidX.Window.dll.so\00", align 16
@__DSOCacheEntry_name.173 = internal constant [36 x i8] c"libaot-System.Runtime.Loader.dll.so\00", align 16
@__DSOCacheEntry_name.174 = internal constant [39 x i8] c"libaot-Syncfusion.Blazor.Themes.dll.so\00", align 16
@__DSOCacheEntry_name.175 = internal constant [54 x i8] c"libaot-Microsoft.AspNetCore.Components.WebView.dll.so\00", align 16
@__DSOCacheEntry_name.176 = internal constant [45 x i8] c"libaot-Microsoft.IdentityModel.Tokens.dll.so\00", align 16
@__DSOCacheEntry_name.177 = internal constant [51 x i8] c"libaot-Microsoft.Extensions.DependencyModel.dll.so\00", align 16
@__DSOCacheEntry_name.178 = internal constant [20 x i8] c"libSystem.Native.so\00", align 16
@__DSOCacheEntry_name.179 = internal constant [34 x i8] c"libaot-System.Formats.Asn1.dll.so\00", align 16
@__DSOCacheEntry_name.180 = internal constant [68 x i8] c"libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so\00", align 16
@__DSOCacheEntry_name.181 = internal constant [35 x i8] c"libaot-System.Xml.XDocument.dll.so\00", align 16
@__DSOCacheEntry_name.182 = internal constant [44 x i8] c"libaot-Microsoft.Extensions.Features.dll.so\00", align 16
@__DSOCacheEntry_name.183 = internal constant [61 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so\00", align 16
@__DSOCacheEntry_name.184 = internal constant [36 x i8] c"libaot-System.Linq.Queryable.dll.so\00", align 16
@__DSOCacheEntry_name.185 = internal constant [35 x i8] c"libSystem.IO.Compression.Native.so\00", align 16
@__DSOCacheEntry_name.186 = internal constant [35 x i8] c"libaot-System.Text.Encoding.dll.so\00", align 16
@__DSOCacheEntry_name.187 = internal constant [61 x i8] c"libaot-Microsoft.Extensions.Localization.Abstractions.dll.so\00", align 16
@__DSOCacheEntry_name.188 = internal constant [26 x i8] c"libaot-System.Linq.dll.so\00", align 16
@__DSOCacheEntry_name.189 = internal constant [42 x i8] c"libaot-Xamarin.AndroidX.CustomView.dll.so\00", align 16
@__DSOCacheEntry_name.190 = internal constant [16 x i8] c"libmonodroid.so\00", align 16
@__DSOCacheEntry_name.191 = internal constant [59 x i8] c"libaot-Microsoft.AspNetCore.Components.WebView.Maui.dll.so\00", align 16
@__DSOCacheEntry_name.192 = internal constant [60 x i8] c"libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so\00", align 16
@__DSOCacheEntry_name.193 = internal constant [34 x i8] c"libaot-System.Net.Security.dll.so\00", align 16
@__DSOCacheEntry_name.194 = internal constant [30 x i8] c"libaot-System.Net.Http.dll.so\00", align 16
@__DSOCacheEntry_name.195 = internal constant [31 x i8] c"libaot-System.Text.Json.dll.so\00", align 16
@__DSOCacheEntry_name.196 = internal constant [19 x i8] c"libmonosgen-2.0.so\00", align 16
@__DSOCacheEntry_name.197 = internal constant [41 x i8] c"libaot-Syncfusion.Blazor.Schedule.dll.so\00", align 16
@__DSOCacheEntry_name.198 = internal constant [33 x i8] c"libaot-System.Private.Xml.dll.so\00", align 16
@__DSOCacheEntry_name.199 = internal constant [37 x i8] c"libaot-Syncfusion.Blazor.Data.dll.so\00", align 16
@__DSOCacheEntry_name.200 = internal constant [35 x i8] c"libaot-System.Reactive.Linq.dll.so\00", align 16
@__DSOCacheEntry_name.201 = internal constant [45 x i8] c"libaot-Xamarin.AndroidX.Navigation.UI.dll.so\00", align 16
@__DSOCacheEntry_name.202 = internal constant [33 x i8] c"libaot-System.Private.Uri.dll.so\00", align 16
@__DSOCacheEntry_name.203 = internal constant [40 x i8] c"libaot-Xamarin.AndroidX.Fragment.dll.so\00", align 16
@__DSOCacheEntry_name.204 = internal constant [56 x i8] c"libaot-Microsoft.AspNetCore.Routing.Abstractions.dll.so\00", align 16
@__DSOCacheEntry_name.205 = internal constant [51 x i8] c"libaot-Microsoft.AspNetCore.Http.Extensions.dll.so\00", align 16
@__DSOCacheEntry_name.206 = internal constant [43 x i8] c"libaot-Microsoft.Extensions.Logging.dll.so\00", align 16
@__DSOCacheEntry_name.207 = internal constant [35 x i8] c"libaot-System.Globalization.dll.so\00", align 16
@__DSOCacheEntry_name.208 = internal constant [52 x i8] c"libaot-Microsoft.IdentityModel.JsonWebTokens.dll.so\00", align 16
@__DSOCacheEntry_name.209 = internal constant [56 x i8] c"libaot-Microsoft.Extensions.Logging.Abstractions.dll.so\00", align 16
@__DSOCacheEntry_name.210 = internal constant [37 x i8] c"libaot-System.Dynamic.Runtime.dll.so\00", align 16
@__DSOCacheEntry_name.211 = internal constant [61 x i8] c"libaot-Microsoft.AspNetCore.Components.Web.Extensions.dll.so\00", align 16

; dso_cache
@dso_cache = local_unnamed_addr global [1256 x %struct.DSOCacheEntry] [
	; 0
	%struct.DSOCacheEntry {
		i64 10013782901593326, ; hash 0x23937b84b514ee, from name: aot-System.Buffers.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1
	%struct.DSOCacheEntry {
		i64 10799095553108785, ; hash 0x265db85e56ab31, from name: 420BytesClient.App
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 2
	%struct.DSOCacheEntry {
		i64 16604595802139920, ; hash 0x3afdcaba6ced10, from name: libaot-Xamarin.AndroidX.CardView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 3
	%struct.DSOCacheEntry {
		i64 29859340471032836, ; hash 0x6a14e97600dc04, from name: libaot-System.Net.WebSockets.Client.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 4
	%struct.DSOCacheEntry {
		i64 84283058636713278, ; hash 0x12b6efeca9fed3e, from name: aot-System.Threading.Channels.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 5
	%struct.DSOCacheEntry {
		i64 91555823548556097, ; hash 0x145458953bae341, from name: Microsoft.Extensions.Http.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 6
	%struct.DSOCacheEntry {
		i64 120698629574877762, ; hash 0x1accec39cafe242, from name: Mono.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 7
	%struct.DSOCacheEntry {
		i64 130550379555063986, ; hash 0x1cfcee0e6ac08b2, from name: Microsoft.Extensions.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 8
	%struct.DSOCacheEntry {
		i64 147907448127148234, ; hash 0x20d790a5940d0ca, from name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 9
	%struct.DSOCacheEntry {
		i64 160518225272466977, ; hash 0x23a4679b5576e21, from name: Microsoft.Extensions.Hosting.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 10
	%struct.DSOCacheEntry {
		i64 199002946643816356, ; hash 0x2c3002027f5efa4, from name: libaot-Microsoft.AspNetCore.WebUtilities
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 11
	%struct.DSOCacheEntry {
		i64 221057335580609593, ; hash 0x3115a79ba46cc39, from name: libaot-System.Threading.Thread.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 12
	%struct.DSOCacheEntry {
		i64 221913484098395070, ; hash 0x3146523568ddbbe, from name: libaot-Microsoft.Maui.Graphics
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 13
	%struct.DSOCacheEntry {
		i64 228930976305280909, ; hash 0x32d538290c2778d, from name: libaot-Microsoft.Extensions.Configuration.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 14
	%struct.DSOCacheEntry {
		i64 230901793898057014, ; hash 0x33453f54b4b4d36, from name: libaot-System.IO
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 15
	%struct.DSOCacheEntry {
		i64 269791565915828182, ; hash 0x3be7dfff1cf2fd6, from name: aot-Syncfusion.Blazor.Navigations
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 16
	%struct.DSOCacheEntry {
		i64 290628453294630638, ; hash 0x4088509d83f66ee, from name: libaot-System.Net.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 17
	%struct.DSOCacheEntry {
		i64 294786924891261343, ; hash 0x4174b257692c99f, from name: aot-Xamarin.AndroidX.Navigation.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 18
	%struct.DSOCacheEntry {
		i64 310829165835334582, ; hash 0x450497abf7233b6, from name: libaot-Xamarin.Google.Android.Material.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 19
	%struct.DSOCacheEntry {
		i64 318998200374973725, ; hash 0x46d4f2c5156d51d, from name: libaot-Newtonsoft.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 20
	%struct.DSOCacheEntry {
		i64 327393534088447553, ; hash 0x48b22af451a0641, from name: libaot-System.Console.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 21
	%struct.DSOCacheEntry {
		i64 370449587969267027, ; hash 0x52419f002191553, from name: aot-System.Linq.Parallel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 22
	%struct.DSOCacheEntry {
		i64 386333429249247466, ; hash 0x55c8834ff4288ea, from name: aot-Microsoft.IdentityModel.Logging.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 23
	%struct.DSOCacheEntry {
		i64 390170653843578339, ; hash 0x56a2a247820dde3, from name: aot-System.Security.Cryptography.Algorithms
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 24
	%struct.DSOCacheEntry {
		i64 409388313388362627, ; hash 0x5ae708082b5ab83, from name: System.Web.HttpUtility.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 25
	%struct.DSOCacheEntry {
		i64 411675884429428512, ; hash 0x5b691092602c720, from name: libaot-Microsoft.Maui
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 26
	%struct.DSOCacheEntry {
		i64 420022783370350079, ; hash 0x5d4387f005c4dff, from name: aot-MatBlazor
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 27
	%struct.DSOCacheEntry {
		i64 423733613280416525, ; hash 0x5e16779eaf8d30d, from name: aot-420BytesClient.App.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 28
	%struct.DSOCacheEntry {
		i64 450226825260451621, ; hash 0x63f86e984004725, from name: libaot-Xamarin.Google.Crypto.Tink.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 29
	%struct.DSOCacheEntry {
		i64 455421633420727173, ; hash 0x651fb900b121385, from name: libaot-System.Threading.Tasks.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 30
	%struct.DSOCacheEntry {
		i64 472512565983034901, ; hash 0x68eb3acdf53be15, from name: libaot-System.ComponentModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 31
	%struct.DSOCacheEntry {
		i64 483259409837255036, ; hash 0x6b4e1df71b6e97c, from name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 32
	%struct.DSOCacheEntry {
		i64 534451948636637073, ; hash 0x76ac13734008791, from name: aot-System.Reflection.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 33
	%struct.DSOCacheEntry {
		i64 544465019603341966, ; hash 0x78e540cf615528e, from name: libaot-System.Text.Encoding.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 34
	%struct.DSOCacheEntry {
		i64 554397431847413495, ; hash 0x7b19d86e5a766f7, from name: aot-Microsoft.AspNetCore.Components.Web
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 35
	%struct.DSOCacheEntry {
		i64 560278790331054453, ; hash 0x7c6829760de3975, from name: System.Reflection.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 36
	%struct.DSOCacheEntry {
		i64 584895086741024446, ; hash 0x81df6fb8411eebe, from name: aot-Microsoft.CSharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 37
	%struct.DSOCacheEntry {
		i64 603416640204715261, ; hash 0x85fc43cbaf634fd, from name: libaot-System.Net.NameResolution
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 38
	%struct.DSOCacheEntry {
		i64 626497116700919570, ; hash 0x8b1c3ceedc3c712, from name: aot-System.Text.RegularExpressions
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 39
	%struct.DSOCacheEntry {
		i64 628522906763308403, ; hash 0x8b8f640eed2ad73, from name: libaot-System.ObjectModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 40
	%struct.DSOCacheEntry {
		i64 636333942931124576, ; hash 0x8d4b65982eef160, from name: libaot-System.Net.WebSockets.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 41
	%struct.DSOCacheEntry {
		i64 658362730503392650, ; hash 0x922f96a4d02cd8a, from name: libaot-Microsoft.AspNetCore.SignalR.Protocols.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 42
	%struct.DSOCacheEntry {
		i64 666970978597137937, ; hash 0x9418e923ec6ee11, from name: Syncfusion.Blazor.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 43
	%struct.DSOCacheEntry {
		i64 671134424083222513, ; hash 0x9505933f0044ff1, from name: aot-Syncfusion.Licensing.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 44
	%struct.DSOCacheEntry {
		i64 680930311029487832, ; hash 0x973268299b578d8, from name: aot-System.IO.Compression.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 45
	%struct.DSOCacheEntry {
		i64 683390398661839228, ; hash 0x97be3f26326c97c, from name: Microsoft.Extensions.FileProviders.Embedded
		i8 0, ; ignore
		i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 46
	%struct.DSOCacheEntry {
		i64 684962877886743373, ; hash 0x9817a1bbcc4c34d, from name: libaot-System.IO.Pipelines
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 47
	%struct.DSOCacheEntry {
		i64 739739707383691399, ; hash 0xa44155834db3887, from name: aot-Xamarin.AndroidX.CursorAdapter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 48
	%struct.DSOCacheEntry {
		i64 741027209231504624, ; hash 0xa48a852172494f0, from name: aot-System.Private.DataContractSerialization.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 49
	%struct.DSOCacheEntry {
		i64 743359736279824557, ; hash 0xa50f1bddd4978ad, from name: libaot-Xamarin.AndroidX.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 50
	%struct.DSOCacheEntry {
		i64 750875890346172408, ; hash 0xa6ba5a4da7d1ff8, from name: System.Threading.Thread
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 51
	%struct.DSOCacheEntry {
		i64 756290313852954525, ; hash 0xa7ee2089046279d, from name: System.Security.Cryptography.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 52
	%struct.DSOCacheEntry {
		i64 795881333977694555, ; hash 0xb0b89db431ac15b, from name: libaot-Microsoft.AspNetCore.Http.Connections.Client
		i8 0, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 53
	%struct.DSOCacheEntry {
		i64 799181003517975415, ; hash 0xb1742e371eddb77, from name: libaot-System.ComponentModel.Annotations.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 54
	%struct.DSOCacheEntry {
		i64 842512485340009995, ; hash 0xbb134a43f85d60b, from name: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 55
	%struct.DSOCacheEntry {
		i64 872800313462103108, ; hash 0xc1ccf42c3c21c44, from name: Xamarin.AndroidX.DrawerLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 56
	%struct.DSOCacheEntry {
		i64 872965262237280243, ; hash 0xc1d6547e4e8a7f3, from name: Microsoft.AspNetCore.Connections.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 57
	%struct.DSOCacheEntry {
		i64 917175643050152429, ; hash 0xcba766350a511ed, from name: aot-System.Runtime.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 58
	%struct.DSOCacheEntry {
		i64 921618637123103922, ; hash 0xcca3f447c1a2cb2, from name: aot-Microsoft.AspNetCore.Components.Authorization.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 59
	%struct.DSOCacheEntry {
		i64 926729488379472330, ; hash 0xcdc678f45bce9ca, from name: aot-Java.Interop.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 60
	%struct.DSOCacheEntry {
		i64 926762996762141689, ; hash 0xcdc86090cfbe3f9, from name: libaot-Xamarin.AndroidX.Lifecycle.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 61
	%struct.DSOCacheEntry {
		i64 927419741979422758, ; hash 0xcdedb57765e3026, from name: aot-Microsoft.JSInterop.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 62
	%struct.DSOCacheEntry {
		i64 938607774865935643, ; hash 0xd069acc5c4dcd1b, from name: libaot-System.Linq.Parallel
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 63
	%struct.DSOCacheEntry {
		i64 961949100492090249, ; hash 0xd59879c3ad66b89, from name: libaot-Microsoft.AspNetCore.Http.Connections.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 64
	%struct.DSOCacheEntry {
		i64 992266327652823594, ; hash 0xdc53cf7be53f22a, from name: Microsoft.AspNetCore.Hosting.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 65
	%struct.DSOCacheEntry {
		i64 1073802724419667368, ; hash 0xee6e9e37be185a8, from name: Syncfusion.Blazor.SplitButtons
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 66
	%struct.DSOCacheEntry {
		i64 1096321628016204463, ; hash 0xf36eab64d7bdaaf, from name: aot-System.Linq.Expressions
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 67
	%struct.DSOCacheEntry {
		i64 1097501675994448902, ; hash 0xf3b1bf5a20b8406, from name: libaot-System.Collections
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 68
	%struct.DSOCacheEntry {
		i64 1135679001553794407, ; hash 0xfc2be08ea7bf567, from name: aot-Microsoft.Maui.Controls.Compatibility
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 69
	%struct.DSOCacheEntry {
		i64 1136601720422326463, ; hash 0xfc6053e24dee0bf, from name: libaot-Xamarin.Kotlin.StdLib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 70
	%struct.DSOCacheEntry {
		i64 1146928578970395727, ; hash 0xfeab5774446244f, from name: aot-System.ComponentModel.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 71
	%struct.DSOCacheEntry {
		i64 1151394494093259064, ; hash 0xffa933128c4f138, from name: aot-Xamarin.AndroidX.Collection
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 72
	%struct.DSOCacheEntry {
		i64 1181472735908652530, ; hash 0x10656f318fa4e5f2, from name: System.Runtime.Numerics.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 73
	%struct.DSOCacheEntry {
		i64 1200280967012175695, ; hash 0x10a8412e1d6c4f4f, from name: libaot-netstandard.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 74
	%struct.DSOCacheEntry {
		i64 1234884336330527393, ; hash 0x112330c2ddacd2a1, from name: aot-System.Security.Claims.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 75
	%struct.DSOCacheEntry {
		i64 1249162902185008584, ; hash 0x1155eb0a8b555dc8, from name: aot-System.Diagnostics.Debug
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 76
	%struct.DSOCacheEntry {
		i64 1310390983169450822, ; hash 0x122f71a80cb0a346, from name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 77
	%struct.DSOCacheEntry {
		i64 1327510266844082204, ; hash 0x126c438de2ecf01c, from name: aot-Syncfusion.ExcelExport.Net.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 78
	%struct.DSOCacheEntry {
		i64 1336414576634453616, ; hash 0x128be5fa10f35e70, from name: aot-System.Runtime.CompilerServices.Unsafe
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 79
	%struct.DSOCacheEntry {
		i64 1347602760944503386, ; hash 0x12b3a592386eca5a, from name: libaot-Xamarin.AndroidX.AppCompat
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 80
	%struct.DSOCacheEntry {
		i64 1379514111066213802, ; hash 0x132504c668bd8daa, from name: aot-System.Reflection.Emit.ILGeneration.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.78, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 81
	%struct.DSOCacheEntry {
		i64 1440246745011583723, ; hash 0x13fcc8c8a953faeb, from name: libaot-Microsoft.Extensions.FileProviders.Physical.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__DSOCacheEntry_name.79, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 82
	%struct.DSOCacheEntry {
		i64 1469004932760421551, ; hash 0x1462f434067b44af, from name: aot-Microsoft.Net.Http.Headers.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.80, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 83
	%struct.DSOCacheEntry {
		i64 1499327756876432029, ; hash 0x14ceaea6ae80c29d, from name: libSystem.Security.Cryptography.Native.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.81, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 84
	%struct.DSOCacheEntry {
		i64 1505194825217435348, ; hash 0x14e386b7fad766d4, from name: libaot-Microsoft.AspNetCore.Components.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.82, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 85
	%struct.DSOCacheEntry {
		i64 1536393630511050858, ; hash 0x15525ddde5c8b06a, from name: aot-System.Reflection.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 86
	%struct.DSOCacheEntry {
		i64 1541515823776768866, ; hash 0x1564907973dba362, from name: Microsoft.Extensions.FileSystemGlobbing.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.83, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 87
	%struct.DSOCacheEntry {
		i64 1560574748131067758, ; hash 0x15a8467713cc076e, from name: System.Collections.NonGeneric.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.84, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 88
	%struct.DSOCacheEntry {
		i64 1584095381067851907, ; hash 0x15fbd65b2ee2e883, from name: aot-Syncfusion.Blazor.Buttons.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.85, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 89
	%struct.DSOCacheEntry {
		i64 1618625398619379628, ; hash 0x16768339652217ac, from name: libaot-Microsoft.AspNetCore.SignalR.Client.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.86, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 90
	%struct.DSOCacheEntry {
		i64 1626361353450471026, ; hash 0x1691ff08bcd6be72, from name: libaot-MudBlazor
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.87, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 91
	%struct.DSOCacheEntry {
		i64 1686520669085146360, ; hash 0x1767b99ceb2c9cf8, from name: Syncfusion.Blazor.Inputs
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.88, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 92
	%struct.DSOCacheEntry {
		i64 1690700643259123969, ; hash 0x17769346fefc0901, from name: libaot-Xamarin.AndroidX.ViewPager2
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.89, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 93
	%struct.DSOCacheEntry {
		i64 1709477469831854591, ; hash 0x17b948b39cdc79ff, from name: aot-Microsoft.Extensions.Configuration.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__DSOCacheEntry_name.90, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 94
	%struct.DSOCacheEntry {
		i64 1730900776029750156, ; hash 0x18056515c8b3838c, from name: aot-System.Runtime.Numerics.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 95
	%struct.DSOCacheEntry {
		i64 1731380447121279447, ; hash 0x18071957e9b889d7, from name: Newtonsoft.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 96
	%struct.DSOCacheEntry {
		i64 1820049293894846070, ; hash 0x19421d30944d8676, from name: aot-MudBlazor.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.87, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 97
	%struct.DSOCacheEntry {
		i64 1836611346387731153, ; hash 0x197cf449ebe482d1, from name: Xamarin.AndroidX.SavedState
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.91, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 98
	%struct.DSOCacheEntry {
		i64 1839650503445834671, ; hash 0x1987c062d0c1ebaf, from name: aot-Microsoft.Extensions.FileProviders.Composite.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.92, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 99
	%struct.DSOCacheEntry {
		i64 1888175769036431548, ; hash 0x1a3425dba2eaa0bc, from name: System.Reflection.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.93, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 100
	%struct.DSOCacheEntry {
		i64 1893652335120276468, ; hash 0x1a479ac40aeedbf4, from name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.94, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 101
	%struct.DSOCacheEntry {
		i64 1897575647115118287, ; hash 0x1a558aff4cba86cf, from name: Xamarin.AndroidX.Security.SecurityCrypto
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.95, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 102
	%struct.DSOCacheEntry {
		i64 1920760634179481754, ; hash 0x1aa7e99ec2d2709a, from name: Microsoft.Maui.Controls.Xaml
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.96, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 103
	%struct.DSOCacheEntry {
		i64 1944135226823170461, ; hash 0x1afaf4b0361e599d, from name: aot-Microsoft.Extensions.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 104
	%struct.DSOCacheEntry {
		i64 1947738677374985070, ; hash 0x1b07c201ec39a36e, from name: libaot-Microsoft.DotNet.PlatformAbstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.97, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 105
	%struct.DSOCacheEntry {
		i64 1972385128188460614, ; hash 0x1b5f51d2edefbe46, from name: System.Security.Cryptography.Algorithms
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 106
	%struct.DSOCacheEntry {
		i64 1998496697131023285, ; hash 0x1bbc162855493bb5, from name: aot-System.Runtime.CompilerServices.Unsafe.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 107
	%struct.DSOCacheEntry {
		i64 2010011812825262371, ; hash 0x1be4ff1821c9e923, from name: System.ComponentModel.TypeConverter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.98, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 108
	%struct.DSOCacheEntry {
		i64 2024202821639637893, ; hash 0x1c1769bdd92c8b85, from name: aot-System.IO.Compression
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 109
	%struct.DSOCacheEntry {
		i64 2034246700143554471, ; hash 0x1c3b18988b912fa7, from name: libaot-Xamarin.AndroidX.Navigation.Runtime
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.99, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 110
	%struct.DSOCacheEntry {
		i64 2052952155131077497, ; hash 0x1c7d8d1bab75e379, from name: libaot-Microsoft.Extensions.Localization
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.100, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 111
	%struct.DSOCacheEntry {
		i64 2054529855940994150, ; hash 0x1c832804c3cc2466, from name: aot-Xamarin.AndroidX.AppCompat
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 112
	%struct.DSOCacheEntry {
		i64 2081794811402477991, ; hash 0x1ce40559e4e561a7, from name: Microsoft.Extensions.Options.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.101, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 113
	%struct.DSOCacheEntry {
		i64 2090443588448805899, ; hash 0x1d02bf5e387be40b, from name: Syncfusion.Blazor.Spinner.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.102, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 114
	%struct.DSOCacheEntry {
		i64 2106650384026482778, ; hash 0x1d3c535cddd6b85a, from name: aot-420BytesClient.App
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 115
	%struct.DSOCacheEntry {
		i64 2144684468955424113, ; hash 0x1dc373295762a571, from name: aot-System.Reflection
		i8 0, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.93, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 116
	%struct.DSOCacheEntry {
		i64 2154631985584437668, ; hash 0x1de6ca600a7479a4, from name: libaot-System.Resources.ResourceManager
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.103, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 117
	%struct.DSOCacheEntry {
		i64 2169143264332568652, ; hash 0x1e1a584e6979584c, from name: aot-System.Collections.Concurrent.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.104, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 118
	%struct.DSOCacheEntry {
		i64 2171422399559674782, ; hash 0x1e22712aef14ab9e, from name: libaot-Microsoft.AspNetCore.Http.Connections.Client.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 119
	%struct.DSOCacheEntry {
		i64 2178726392135891111, ; hash 0x1e3c641c3a0738a7, from name: System.Diagnostics.DiagnosticSource.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.105, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 120
	%struct.DSOCacheEntry {
		i64 2188053935818705699, ; hash 0x1e5d877639de8b23, from name: aot-Xamarin.AndroidX.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 121
	%struct.DSOCacheEntry {
		i64 2205845752800215288, ; hash 0x1e9cbd066cf600f8, from name: aot-System.IO.FileSystem.Watcher.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.106, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 122
	%struct.DSOCacheEntry {
		i64 2224048179339183696, ; hash 0x1edd68091cddc650, from name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.107, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 123
	%struct.DSOCacheEntry {
		i64 2278942814095671648, ; hash 0x1fa06e6a419a0160, from name: System.ObjectModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 124
	%struct.DSOCacheEntry {
		i64 2287834202362508563, ; hash 0x1fc00515e8ce7513, from name: System.Collections.Concurrent
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.104, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 125
	%struct.DSOCacheEntry {
		i64 2308032427487440447, ; hash 0x2007c743aa78ae3f, from name: libaot-System.Linq.Expressions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 126
	%struct.DSOCacheEntry {
		i64 2317435067800416661, ; hash 0x20292eea7646f195, from name: System.AppContext.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.108, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 127
	%struct.DSOCacheEntry {
		i64 2329291776268707078, ; hash 0x20534e8786bc2506, from name: aot-Microsoft.AspNetCore.Authorization
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.109, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 128
	%struct.DSOCacheEntry {
		i64 2331926070505433189, ; hash 0x205caa67f2f2e865, from name: aot-Xamarin.Kotlin.StdLib
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 129
	%struct.DSOCacheEntry {
		i64 2335503487726329082, ; hash 0x2069600c4d9d1cfa, from name: System.Text.Encodings.Web
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.110, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 130
	%struct.DSOCacheEntry {
		i64 2337758774805907496, ; hash 0x207163383edbc828, from name: System.Runtime.CompilerServices.Unsafe
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 131
	%struct.DSOCacheEntry {
		i64 2341103241755635659, ; hash 0x207d44fea35c2fcb, from name: Xamarin.Google.Crypto.Tink.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 132
	%struct.DSOCacheEntry {
		i64 2365982838815399218, ; hash 0x20d5a8db3c431d32, from name: aot-System.IdentityModel.Tokens.Jwt
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.111, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 133
	%struct.DSOCacheEntry {
		i64 2383056933276923752, ; hash 0x211251a7a380b768, from name: System.Memory.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.112, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 134
	%struct.DSOCacheEntry {
		i64 2435338581140429198, ; hash 0x21cc0f895cadd98e, from name: Microsoft.AspNetCore.SignalR.Protocols.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 135
	%struct.DSOCacheEntry {
		i64 2470498323731680442, ; hash 0x2248f922dc398cba, from name: Xamarin.AndroidX.CoordinatorLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.113, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 136
	%struct.DSOCacheEntry {
		i64 2476879673203463353, ; hash 0x225fa4f090ad94b9, from name: libaot-System.Runtime.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.114, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 137
	%struct.DSOCacheEntry {
		i64 2478540115659729487, ; hash 0x22658b1a73742a4f, from name: aot-Microsoft.AspNetCore.Connections.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 138
	%struct.DSOCacheEntry {
		i64 2497223385847772520, ; hash 0x22a7eb7046413568, from name: System.Runtime
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.114, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 139
	%struct.DSOCacheEntry {
		i64 2522582145975789087, ; hash 0x23020318b7a1261f, from name: Xamarin.AndroidX.AppCompat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 140
	%struct.DSOCacheEntry {
		i64 2531748212765917768, ; hash 0x23229395f2a48248, from name: aot-Microsoft.Extensions.Http
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 141
	%struct.DSOCacheEntry {
		i64 2543609594401387459, ; hash 0x234cb7731191f3c3, from name: aot-System.Threading.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.115, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 142
	%struct.DSOCacheEntry {
		i64 2552433275064631459, ; hash 0x236c108a511d40a3, from name: System.Runtime.InteropServices.RuntimeInformation.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__DSOCacheEntry_name.116, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 143
	%struct.DSOCacheEntry {
		i64 2564867392456424521, ; hash 0x23983d4ddf58fc49, from name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.117, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 144
	%struct.DSOCacheEntry {
		i64 2570493634827950186, ; hash 0x23ac3a578152986a, from name: Microsoft.AspNetCore.Components.Authorization.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 145
	%struct.DSOCacheEntry {
		i64 2607857763146079109, ; hash 0x2430f8d18d111b85, from name: libaot-System.Runtime.Serialization.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.118, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 146
	%struct.DSOCacheEntry {
		i64 2617403283110698929, ; hash 0x2452e26b1bc11fb1, from name: Syncfusion.Blazor.Buttons.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.85, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 147
	%struct.DSOCacheEntry {
		i64 2621972009330107316, ; hash 0x24631da6932363b4, from name: libaot-System.Runtime.InteropServices.RuntimeInformation.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__DSOCacheEntry_name.116, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 148
	%struct.DSOCacheEntry {
		i64 2632269733008246987, ; hash 0x2487b36034f808cb, from name: System.Net.NameResolution
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 149
	%struct.DSOCacheEntry {
		i64 2656907746661064104, ; hash 0x24df3b84c8b75da8, from name: Microsoft.Extensions.DependencyInjection
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.107, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 150
	%struct.DSOCacheEntry {
		i64 2668219604630665034, ; hash 0x25076b97f4be774a, from name: aot-Xamarin.AndroidX.Navigation.Fragment
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.119, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 151
	%struct.DSOCacheEntry {
		i64 2672283628435855207, ; hash 0x2515dbcd3c02d767, from name: libaot-Microsoft.AspNetCore.Authentication.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.120, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 152
	%struct.DSOCacheEntry {
		i64 2680228656536905837, ; hash 0x253215c33db4686d, from name: libaot-System.Numerics.Vectors
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.121, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 153
	%struct.DSOCacheEntry {
		i64 2696149129426007350, ; hash 0x256aa55930ea7536, from name: libaot-System.Net.NetworkInformation.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.122, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 154
	%struct.DSOCacheEntry {
		i64 2706075432581334785, ; hash 0x258de944be6c0701, from name: System.Net.WebSockets
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 155
	%struct.DSOCacheEntry {
		i64 2720835231062098223, ; hash 0x25c2593a1fd3012f, from name: libaot-System.Security.Cryptography.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.123, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 156
	%struct.DSOCacheEntry {
		i64 2781169761569919449, ; hash 0x2698b329b26ed1d9, from name: Microsoft.JSInterop
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 157
	%struct.DSOCacheEntry {
		i64 2816932171524067760, ; hash 0x2717c0e2a00fd1b0, from name: aot-Microsoft.AspNetCore.Hosting.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 158
	%struct.DSOCacheEntry {
		i64 2834374838958460508, ; hash 0x2755b8e61c6c8e5c, from name: Microsoft.Maui.Graphics.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 159
	%struct.DSOCacheEntry {
		i64 2864889642192985433, ; hash 0x27c221f3639bdd59, from name: aot-Microsoft.Maui
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 160
	%struct.DSOCacheEntry {
		i64 2865936624365190494, ; hash 0x27c5da2cec11bd5e, from name: aot-System.ComponentModel.TypeConverter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.98, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 161
	%struct.DSOCacheEntry {
		i64 2895224535127013735, ; hash 0x282de760093db967, from name: libaot-System.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.124, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 162
	%struct.DSOCacheEntry {
		i64 2900022003736508354, ; hash 0x283ef2a5bd87f7c2, from name: Microsoft.AspNetCore.Http.Connections.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 163
	%struct.DSOCacheEntry {
		i64 2907180662588755459, ; hash 0x28586168e37cce03, from name: aot-Microsoft.Extensions.FileSystemGlobbing
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.83, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 164
	%struct.DSOCacheEntry {
		i64 2978076563348721961, ; hash 0x295440db18511129, from name: libaot-System.Collections.Specialized
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.125, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 165
	%struct.DSOCacheEntry {
		i64 3017704767998173186, ; hash 0x29e10a7f7d88a002, from name: Xamarin.Google.Android.Material
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 166
	%struct.DSOCacheEntry {
		i64 3021884968805928991, ; hash 0x29efe45e55c5101f, from name: Microsoft.AspNetCore.Authorization.Policy
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.126, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 167
	%struct.DSOCacheEntry {
		i64 3023023456770706911, ; hash 0x29f3efd1387dcddf, from name: System.Runtime.Serialization.Formatters.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.127, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 168
	%struct.DSOCacheEntry {
		i64 3036428435510649410, ; hash 0x2a238f930c81e242, from name: Syncfusion.Blazor.Lists
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.128, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 169
	%struct.DSOCacheEntry {
		i64 3038175307180388234, ; hash 0x2a29c4584dd9af8a, from name: aot-Xamarin.AndroidX.CoordinatorLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.113, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 170
	%struct.DSOCacheEntry {
		i64 3068786168402526502, ; hash 0x2a9684c2d343c126, from name: libaot-System.IdentityModel.Tokens.Jwt.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.111, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 171
	%struct.DSOCacheEntry {
		i64 3073412500499229570, ; hash 0x2aa6f462b4806b82, from name: System.Threading.Channels.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 172
	%struct.DSOCacheEntry {
		i64 3077311767976570318, ; hash 0x2ab4cebfa95f6dce, from name: aot-System.Security.Cryptography.Encoding.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.129, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 173
	%struct.DSOCacheEntry {
		i64 3095291342627718926, ; hash 0x2af4af1399aac70e, from name: libaot-Microsoft.Extensions.Localization.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.100, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 174
	%struct.DSOCacheEntry {
		i64 3106852385031680087, ; hash 0x2b1dc1c88b637057, from name: System.Runtime.Serialization.Xml
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.130, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 175
	%struct.DSOCacheEntry {
		i64 3108167353802057239, ; hash 0x2b226dbd91d66617, from name: libaot-Xamarin.AndroidX.SavedState
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.91, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 176
	%struct.DSOCacheEntry {
		i64 3116659788444322944, ; hash 0x2b40999097f7cc80, from name: aot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__DSOCacheEntry_name.90, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 177
	%struct.DSOCacheEntry {
		i64 3117669081360612393, ; hash 0x2b442f82e9b7bc29, from name: libaot-Syncfusion.Licensing
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 178
	%struct.DSOCacheEntry {
		i64 3138256446947169748, ; hash 0x2b8d539c7e5d95d4, from name: aot-Microsoft.AspNetCore.Mvc.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.131, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 179
	%struct.DSOCacheEntry {
		i64 3142558996668056863, ; hash 0x2b9c9cc1ea1b851f, from name: libaot-Microsoft.Maui.Controls.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.132, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 180
	%struct.DSOCacheEntry {
		i64 3159715243761782120, ; hash 0x2bd99045f7cecd68, from name: aot-System.Linq.Expressions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 181
	%struct.DSOCacheEntry {
		i64 3188209531010000695, ; hash 0x2c3ecbad355da737, from name: System.Text.Encodings.Web.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.110, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 182
	%struct.DSOCacheEntry {
		i64 3215847190090144585, ; hash 0x2ca0fbfb2942db49, from name: libaot-System.Security.Cryptography.Algorithms.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 183
	%struct.DSOCacheEntry {
		i64 3228004203549710724, ; hash 0x2ccc2cb86e0c5984, from name: aot-System.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.133, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 184
	%struct.DSOCacheEntry {
		i64 3260817401620729492, ; hash 0x2d40c02675040e94, from name: libaot-System.Memory
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.112, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 185
	%struct.DSOCacheEntry {
		i64 3266690593535380875, ; hash 0x2d559dc982c94d8b, from name: Microsoft.AspNetCore.Authorization
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.109, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 186
	%struct.DSOCacheEntry {
		i64 3282577833136852042, ; hash 0x2d8e0f25bbb18c4a, from name: aot-Xamarin.AndroidX.Lifecycle.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 187
	%struct.DSOCacheEntry {
		i64 3289520064315143713, ; hash 0x2da6b911e3063621, from name: Xamarin.AndroidX.Lifecycle.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 188
	%struct.DSOCacheEntry {
		i64 3325875462027654285, ; hash 0x2e27e21c8958b48d, from name: System.Runtime.Numerics
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 189
	%struct.DSOCacheEntry {
		i64 3344514922410554693, ; hash 0x2e6a1a9a18463545, from name: Xamarin.KotlinX.Coroutines.Core.Jvm
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 190
	%struct.DSOCacheEntry {
		i64 3379278180018875679, ; hash 0x2ee59b99bd40ed1f, from name: libaot-Microsoft.Maui.Essentials.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.134, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 191
	%struct.DSOCacheEntry {
		i64 3387343871458221356, ; hash 0x2f02434dde5d1d2c, from name: Xamarin.AndroidX.CoordinatorLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.113, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 192
	%struct.DSOCacheEntry {
		i64 3396143930648122816, ; hash 0x2f2186e9506155c0, from name: Microsoft.Extensions.FileProviders.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__DSOCacheEntry_name.135, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 193
	%struct.DSOCacheEntry {
		i64 3412595041027064620, ; hash 0x2f5bf91beead832c, from name: aot-Microsoft.AspNetCore.Http.Connections.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 194
	%struct.DSOCacheEntry {
		i64 3413847582085635339, ; hash 0x2f606c49df8a5d0b, from name: aot-System.Text.Encoding.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 195
	%struct.DSOCacheEntry {
		i64 3415134081241495173, ; hash 0x2f64fe5a4cbab685, from name: libaot-System.Runtime.Serialization.Formatters.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.127, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 196
	%struct.DSOCacheEntry {
		i64 3423572753499592716, ; hash 0x2f82f947cb0c980c, from name: libaot-Microsoft.Net.Http.Headers.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.80, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 197
	%struct.DSOCacheEntry {
		i64 3425915677031941243, ; hash 0x2f8b4c282fee447b, from name: libaot-System.Runtime.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 198
	%struct.DSOCacheEntry {
		i64 3428939974980002207, ; hash 0x2f960abd6cd1e19f, from name: libaot-Microsoft.AspNetCore.Metadata.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.136, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 199
	%struct.DSOCacheEntry {
		i64 3429672777697402584, ; hash 0x2f98a5385a7b1ed8, from name: Microsoft.Maui.Essentials
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.134, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 200
	%struct.DSOCacheEntry {
		i64 3458808448856108996, ; hash 0x300027f56c302fc4, from name: libaot-Microsoft.AspNetCore.Routing
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.137, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 201
	%struct.DSOCacheEntry {
		i64 3491308886800479652, ; hash 0x30739eef4ee835a4, from name: System.Net.Sockets.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.138, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 202
	%struct.DSOCacheEntry {
		i64 3494946837667399002, ; hash 0x30808ba1c00a455a, from name: Microsoft.Extensions.Configuration
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 203
	%struct.DSOCacheEntry {
		i64 3504968395820649747, ; hash 0x30a4262f95dc4d13, from name: Microsoft.Maui.Controls.Xaml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.96, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 204
	%struct.DSOCacheEntry {
		i64 3519863767463074839, ; hash 0x30d911728d679c17, from name: libaot-System.IO.Compression.Brotli
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.139, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 205
	%struct.DSOCacheEntry {
		i64 3522470458906976663, ; hash 0x30e2543832f52197, from name: Xamarin.AndroidX.SwipeRefreshLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.117, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 206
	%struct.DSOCacheEntry {
		i64 3534503520749001150, ; hash 0x310d1439bb9c99be, from name: aot-Microsoft.Maui.Controls.Xaml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.96, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 207
	%struct.DSOCacheEntry {
		i64 3565908020027737498, ; hash 0x317ca6738378459a, from name: libaot-System.Security.Cryptography.X509Certificates.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.140, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 208
	%struct.DSOCacheEntry {
		i64 3584501248261514691, ; hash 0x31beb4e4cf9265c3, from name: libaot-System.Xml.ReaderWriter
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.141, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 209
	%struct.DSOCacheEntry {
		i64 3604923293906189876, ; hash 0x320742a2d7cf3e34, from name: libaot-System.Reflection.Emit.Lightweight
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.142, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 210
	%struct.DSOCacheEntry {
		i64 3605665287358316629, ; hash 0x3209e579a7f30055, from name: aot-Microsoft.AspNetCore.Http.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.143, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 211
	%struct.DSOCacheEntry {
		i64 3617300193753112415, ; hash 0x32333b5c669b1f5f, from name: Microsoft.CSharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 212
	%struct.DSOCacheEntry {
		i64 3638003163729360188, ; hash 0x327cc89a39d5f53c, from name: Microsoft.Extensions.Configuration.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__DSOCacheEntry_name.90, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 213
	%struct.DSOCacheEntry {
		i64 3647754201059316852, ; hash 0x329f6d1e86145474, from name: System.Xml.ReaderWriter
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.141, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 214
	%struct.DSOCacheEntry {
		i64 3657389980202273675, ; hash 0x32c1a8cf2f078b8b, from name: libaot-System.Private.CoreLib
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.144, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 215
	%struct.DSOCacheEntry {
		i64 3660038492435979130, ; hash 0x32cb119dfde71b7a, from name: libaot-Syncfusion.ExcelExport.Net
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 216
	%struct.DSOCacheEntry {
		i64 3682807869886927031, ; hash 0x331bf63ecc9f90b7, from name: libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.99, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 217
	%struct.DSOCacheEntry {
		i64 3683086715764323178, ; hash 0x331cf3daaa17b36a, from name: aot-System.Net.NameResolution
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 218
	%struct.DSOCacheEntry {
		i64 3703096612151080118, ; hash 0x33640abfb837b4b6, from name: libaot-System.Net.Requests
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.145, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 219
	%struct.DSOCacheEntry {
		i64 3707216742628388692, ; hash 0x3372adfc59beef54, from name: aot-Xamarin.AndroidX.CardView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 220
	%struct.DSOCacheEntry {
		i64 3715467530084797350, ; hash 0x338ffe088133cba6, from name: aot-Microsoft.Extensions.FileProviders.Embedded
		i8 0, ; ignore
		i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 221
	%struct.DSOCacheEntry {
		i64 3727469159507183293, ; hash 0x33baa1739ba646bd, from name: Xamarin.AndroidX.RecyclerView
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 222
	%struct.DSOCacheEntry {
		i64 3774596670010902406, ; hash 0x34620fac365f4786, from name: Microsoft.AspNetCore.Mvc.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.146, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 223
	%struct.DSOCacheEntry {
		i64 3778015232232666774, ; hash 0x346e34d6413e3696, from name: libaot-System.Security.Claims.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 224
	%struct.DSOCacheEntry {
		i64 3907746992107374239, ; hash 0x363b1b2f68a9469f, from name: aot-Microsoft.AspNetCore.Hosting.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 225
	%struct.DSOCacheEntry {
		i64 3919223565570527920, ; hash 0x3663e111652bd2b0, from name: System.Security.Cryptography.Encoding
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.129, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 226
	%struct.DSOCacheEntry {
		i64 3926486732424186854, ; hash 0x367daee1356d8be6, from name: aot-Xamarin.AndroidX.DrawerLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 227
	%struct.DSOCacheEntry {
		i64 3933965368022646939, ; hash 0x369840a8bfadc09b, from name: System.Net.Requests
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.145, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 228
	%struct.DSOCacheEntry {
		i64 3939038052422032896, ; hash 0x36aa463d1f5c9e00, from name: libaot-Microsoft.AspNetCore.Connections.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 229
	%struct.DSOCacheEntry {
		i64 3943677120668259164, ; hash 0x36bac1725e44535c, from name: aot-System.ObjectModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 230
	%struct.DSOCacheEntry {
		i64 3956626214857587819, ; hash 0x36e8c2944d95bc6b, from name: Syncfusion.ExcelExport.Net
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 231
	%struct.DSOCacheEntry {
		i64 3966267475168208030, ; hash 0x370b03412596249e, from name: System.Memory
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.112, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 232
	%struct.DSOCacheEntry {
		i64 3994531522905462024, ; hash 0x376f6d4192e15508, from name: aot-System.IO.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 233
	%struct.DSOCacheEntry {
		i64 4002889106673537768, ; hash 0x378d1e6f2e8e92e8, from name: aot-Microsoft.DotNet.PlatformAbstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.97, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 234
	%struct.DSOCacheEntry {
		i64 4009997192427317104, ; hash 0x37a65f335cf1a770, from name: System.Runtime.Serialization.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.118, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 235
	%struct.DSOCacheEntry {
		i64 4017192615964119979, ; hash 0x37bfef6674dd13ab, from name: aot-System.Runtime.Serialization.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.118, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 236
	%struct.DSOCacheEntry {
		i64 4028806192448886134, ; hash 0x37e931e2f1cf5576, from name: aot-System.Net.WebSockets.Client.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 237
	%struct.DSOCacheEntry {
		i64 4060289699751114475, ; hash 0x38590bf836d7b6eb, from name: libaot-Microsoft.Extensions.ObjectPool
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.147, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 238
	%struct.DSOCacheEntry {
		i64 4074682551133317578, ; hash 0x388c2e3110c8a9ca, from name: libaot-System.Security.Cryptography.Csp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.148, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 239
	%struct.DSOCacheEntry {
		i64 4082358154728349959, ; hash 0x38a7731cca80a107, from name: libaot-System.Reflection.Emit.ILGeneration
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.78, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 240
	%struct.DSOCacheEntry {
		i64 4091948869252100124, ; hash 0x38c985d106d5301c, from name: libaot-Syncfusion.Blazor.Calendars
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.149, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 241
	%struct.DSOCacheEntry {
		i64 4095418721340757718, ; hash 0x38d5d9a0ec0016d6, from name: aot-Microsoft.Maui.Essentials
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.134, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 242
	%struct.DSOCacheEntry {
		i64 4105760315252337620, ; hash 0x38fa9740e382ebd4, from name: libaot-System.Net.WebHeaderCollection.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.150, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 243
	%struct.DSOCacheEntry {
		i64 4115927144641244248, ; hash 0x391eb5ee51baac58, from name: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.94, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 244
	%struct.DSOCacheEntry {
		i64 4127072609361602099, ; hash 0x39464eac0b3e2633, from name: libaot-Microsoft.AspNetCore.WebUtilities.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 245
	%struct.DSOCacheEntry {
		i64 4137384516858186512, ; hash 0x396af14c1a888b10, from name: System.Security.Cryptography.Encoding.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.129, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 246
	%struct.DSOCacheEntry {
		i64 4154383907710350974, ; hash 0x39a7562737acb67e, from name: System.ComponentModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 247
	%struct.DSOCacheEntry {
		i64 4160322800753423448, ; hash 0x39bc6f8b81ddb458, from name: Syncfusion.Blazor.Navigations.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 248
	%struct.DSOCacheEntry {
		i64 4167269041631776580, ; hash 0x39d51d1d3df1cf44, from name: System.Threading.ThreadPool
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.151, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 249
	%struct.DSOCacheEntry {
		i64 4186413538837520313, ; hash 0x3a1920eed94bdfb9, from name: aot-MatBlazor.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 250
	%struct.DSOCacheEntry {
		i64 4187479170553454871, ; hash 0x3a1cea1e912fa117, from name: System.Linq.Expressions
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 251
	%struct.DSOCacheEntry {
		i64 4199824557729976903, ; hash 0x3a48c62f02751247, from name: libaot-Microsoft.IdentityModel.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.152, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 252
	%struct.DSOCacheEntry {
		i64 4205801962323029395, ; hash 0x3a5e0299f7e7ad93, from name: System.ComponentModel.TypeConverter
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.98, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 253
	%struct.DSOCacheEntry {
		i64 4206164525472394496, ; hash 0x3a5f4c59c7a1ad00, from name: libaot-Microsoft.AspNetCore.SignalR.Client
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.153, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 254
	%struct.DSOCacheEntry {
		i64 4220783285704279373, ; hash 0x3a933c09224f454d, from name: aot-System.Threading.Tasks.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.154, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 255
	%struct.DSOCacheEntry {
		i64 4221931987470636147, ; hash 0x3a9750c61b0bd473, from name: libaot-System.Threading.ThreadPool
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.151, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 256
	%struct.DSOCacheEntry {
		i64 4225924121207573736, ; hash 0x3aa57f992c550ce8, from name: Microsoft.AspNetCore.Authentication.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__DSOCacheEntry_name.155, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 257
	%struct.DSOCacheEntry {
		i64 4227122169776624287, ; hash 0x3aa9c13797b6d29f, from name: libaot-420BytesClient.DT.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.156, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 258
	%struct.DSOCacheEntry {
		i64 4240134269926784299, ; hash 0x3ad7fba73ef23d2b, from name: Microsoft.Extensions.Hosting.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 259
	%struct.DSOCacheEntry {
		i64 4243001330476888824, ; hash 0x3ae22b3acc95b2f8, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.157, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 260
	%struct.DSOCacheEntry {
		i64 4244996295783171795, ; hash 0x3ae941a3db0146d3, from name: aot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.119, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 261
	%struct.DSOCacheEntry {
		i64 4250192876909962317, ; hash 0x3afbb7e72f1d244d, from name: Microsoft.AspNetCore.Hosting.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 262
	%struct.DSOCacheEntry {
		i64 4281464260544890017, ; hash 0x3b6ad10f904f04a1, from name: libaot-Microsoft.Extensions.FileSystemGlobbing.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.83, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 263
	%struct.DSOCacheEntry {
		i64 4336779140400561657, ; hash 0x3c2f55a6a4e63df9, from name: libaot-System.IO.FileSystem.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.158, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 264
	%struct.DSOCacheEntry {
		i64 4364864446463818253, ; hash 0x3c931d1688353a0d, from name: aot-System.Security.Cryptography.Encoding
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.129, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 265
	%struct.DSOCacheEntry {
		i64 4372335741825217353, ; hash 0x3cada8310a3c7349, from name: aot-Microsoft.AspNetCore.SignalR.Client
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.153, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 266
	%struct.DSOCacheEntry {
		i64 4384840217421645357, ; hash 0x3cda14f22443862d, from name: Microsoft.AspNetCore.Components.Forms
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.159, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 267
	%struct.DSOCacheEntry {
		i64 4389332954161269826, ; hash 0x3cea0b10edb2cc42, from name: aot-Syncfusion.Blazor.DropDowns
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.160, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 268
	%struct.DSOCacheEntry {
		i64 4411920538413871651, ; hash 0x3d3a4a5ab568b223, from name: aot-netstandard
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 269
	%struct.DSOCacheEntry {
		i64 4425588670699136170, ; hash 0x3d6ad972bf03e4aa, from name: Xamarin.AndroidX.Collection.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 270
	%struct.DSOCacheEntry {
		i64 4462113212971739263, ; hash 0x3dec9c536ec1e87f, from name: aot-Microsoft.AspNetCore.SignalR.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.161, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 271
	%struct.DSOCacheEntry {
		i64 4480088684592380434, ; hash 0x3e2c78ec0f603a12, from name: aot-Newtonsoft.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 272
	%struct.DSOCacheEntry {
		i64 4485509010103122468, ; hash 0x3e3fbaadf002ba24, from name: aot-System.Memory.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.112, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 273
	%struct.DSOCacheEntry {
		i64 4495603079205358471, ; hash 0x3e63972e8b300b87, from name: libaot-Syncfusion.Blazor.Popups.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.162, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 274
	%struct.DSOCacheEntry {
		i64 4511511353632409648, ; hash 0x3e9c1bac5166c830, from name: libaot-System.Runtime.CompilerServices.Unsafe.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 275
	%struct.DSOCacheEntry {
		i64 4519937209358600751, ; hash 0x3eba0af1bae3ca2f, from name: aot-Xamarin.AndroidX.Loader
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.163, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 276
	%struct.DSOCacheEntry {
		i64 4533637005954432954, ; hash 0x3eeab6d6307abfba, from name: System.Text.RegularExpressions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 277
	%struct.DSOCacheEntry {
		i64 4540865938398241834, ; hash 0x3f0465832ee5e42a, from name: libaot-Microsoft.AspNetCore.Hosting.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 278
	%struct.DSOCacheEntry {
		i64 4553845421192707918, ; hash 0x3f328248843aff4e, from name: libaot-System.AppContext
		i8 0, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.108, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 279
	%struct.DSOCacheEntry {
		i64 4557928737156628881, ; hash 0x3f41040999c40191, from name: aot-Microsoft.Extensions.FileProviders.Composite
		i8 0, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.92, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 280
	%struct.DSOCacheEntry {
		i64 4562889186705488620, ; hash 0x3f52a38a430d3aec, from name: libaot-System.Memory.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.112, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 281
	%struct.DSOCacheEntry {
		i64 4600564633383719664, ; hash 0x3fd87d28c30fd2f0, from name: aot-System.Net.NetworkInformation.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.122, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 282
	%struct.DSOCacheEntry {
		i64 4619841365973187374, ; hash 0x401cf93ed17cbb2e, from name: libaot-System.Private.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.164, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 283
	%struct.DSOCacheEntry {
		i64 4645766872368140140, ; hash 0x4079145b28c7cf6c, from name: aot-Microsoft.AspNetCore.Http.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.165, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 284
	%struct.DSOCacheEntry {
		i64 4672453897036726049, ; hash 0x40d7e4104a437f21, from name: System.IO.FileSystem.Watcher
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.106, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 285
	%struct.DSOCacheEntry {
		i64 4675735443907349489, ; hash 0x40e38c9cf5cd0bf1, from name: libaot-System.IO.FileSystem
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.166, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 286
	%struct.DSOCacheEntry {
		i64 4704458384224729820, ; hash 0x414997f9a452badc, from name: libaot-System.Net.WebHeaderCollection
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.150, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 287
	%struct.DSOCacheEntry {
		i64 4743821336939966868, ; hash 0x41d5705f4239b194, from name: System.ComponentModel.Annotations
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 288
	%struct.DSOCacheEntry {
		i64 4748725187834767676, ; hash 0x41e6dc6604d7693c, from name: libaot-System.Private.DataContractSerialization
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 289
	%struct.DSOCacheEntry {
		i64 4764712124898909934, ; hash 0x421fa86edd989eee, from name: Microsoft.AspNetCore.ResponseCaching.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__DSOCacheEntry_name.167, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 290
	%struct.DSOCacheEntry {
		i64 4773026424236906241, ; hash 0x423d323e88319701, from name: libaot-Syncfusion.Blazor.Popups
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.162, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 291
	%struct.DSOCacheEntry {
		i64 4778132833905139113, ; hash 0x424f567f2e8bdda9, from name: libaot-System.Runtime.InteropServices.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.168, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 292
	%struct.DSOCacheEntry {
		i64 4779406765302001650, ; hash 0x4253dd2172ecaff2, from name: libaot-Microsoft.AspNetCore.Components
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.82, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 293
	%struct.DSOCacheEntry {
		i64 4794310189461587505, ; hash 0x4288cfb749e4c631, from name: Xamarin.AndroidX.Activity
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.169, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 294
	%struct.DSOCacheEntry {
		i64 4821796847100292949, ; hash 0x42ea76af7a82ef55, from name: System.Private.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.164, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 295
	%struct.DSOCacheEntry {
		i64 4832790362546924928, ; hash 0x4311853ac18a6d80, from name: aot-Microsoft.IdentityModel.Logging
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 296
	%struct.DSOCacheEntry {
		i64 4865125023087616008, ; hash 0x4384656e95006008, from name: libaot-Microsoft.AspNetCore.Hosting.Server.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 297
	%struct.DSOCacheEntry {
		i64 4880739103642492700, ; hash 0x43bbde5b01f81f1c, from name: aot-System.Reflection.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.93, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 298
	%struct.DSOCacheEntry {
		i64 4904118099769380138, ; hash 0x440eed6db9514d2a, from name: Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 299
	%struct.DSOCacheEntry {
		i64 4905845688753735370, ; hash 0x441510a9610c46ca, from name: libaot-Microsoft.CSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 300
	%struct.DSOCacheEntry {
		i64 4931815757766637469, ; hash 0x4471544d435ab79d, from name: System.IO.FileSystem.Watcher.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.106, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 301
	%struct.DSOCacheEntry {
		i64 4936802805617500442, ; hash 0x44830bfed2fba11a, from name: System.Security.Cryptography.Algorithms.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 302
	%struct.DSOCacheEntry {
		i64 4942169814716192606, ; hash 0x44961d4301d1175e, from name: aot-Xamarin.AndroidX.RecyclerView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 303
	%struct.DSOCacheEntry {
		i64 5074164375705998164, ; hash 0x466b0d9d99e5d354, from name: aot-Microsoft.Extensions.DependencyInjection
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.107, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 304
	%struct.DSOCacheEntry {
		i64 5076219910820076772, ; hash 0x46725b1d2a321ce4, from name: aot-Microsoft.AspNetCore.Http.Features
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.170, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 305
	%struct.DSOCacheEntry {
		i64 5094869819181566381, ; hash 0x46b49d1b552d09ad, from name: libaot-Microsoft.AspNetCore.Mvc.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.146, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 306
	%struct.DSOCacheEntry {
		i64 5099468265966638712, ; hash 0x46c4f35ea8519678, from name: System.Resources.ResourceManager
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.103, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 307
	%struct.DSOCacheEntry {
		i64 5103417709280584325, ; hash 0x46d2fb5e161b6285, from name: System.Collections.Specialized
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.125, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 308
	%struct.DSOCacheEntry {
		i64 5109692736403029004, ; hash 0x46e94678b0b23c0c, from name: libaot-System.Text.Encodings.Web
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.110, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 309
	%struct.DSOCacheEntry {
		i64 5146554439312321884, ; hash 0x476c3bfeb46bad5c, from name: aot-Syncfusion.Blazor.SplitButtons.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 310
	%struct.DSOCacheEntry {
		i64 5153342474927477147, ; hash 0x478459ad67fc119b, from name: aot-System.Security.Cryptography.Cng
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.171, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 311
	%struct.DSOCacheEntry {
		i64 5161677616539729366, ; hash 0x47a1f671caef7dd6, from name: aot-Xamarin.AndroidX.Window
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.172, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 312
	%struct.DSOCacheEntry {
		i64 5166157643424585078, ; hash 0x47b1e10155fdd576, from name: aot-Xamarin.AndroidX.Window.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.172, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 313
	%struct.DSOCacheEntry {
		i64 5169237422140596887, ; hash 0x47bcd20c3258a297, from name: Syncfusion.Blazor.Popups.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.162, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 314
	%struct.DSOCacheEntry {
		i64 5176632000276338779, ; hash 0x47d717609564185b, from name: aot-Microsoft.Extensions.FileProviders.Embedded.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 315
	%struct.DSOCacheEntry {
		i64 5177565741364132164, ; hash 0x47da689c1f3db944, from name: Microsoft.AspNetCore.Http
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.143, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 316
	%struct.DSOCacheEntry {
		i64 5185404252742227183, ; hash 0x47f641b1c58014ef, from name: libaot-System.ComponentModel.Annotations
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 317
	%struct.DSOCacheEntry {
		i64 5200021703653791990, ; hash 0x482a3030469b18f6, from name: libaot-Syncfusion.Blazor.Lists
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.128, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 318
	%struct.DSOCacheEntry {
		i64 5232730255288553603, ; hash 0x489e647167e9d083, from name: aot-System.ComponentModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 319
	%struct.DSOCacheEntry {
		i64 5239320886842285542, ; hash 0x48b5ce966484dde6, from name: Microsoft.AspNetCore.SignalR.Client.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.153, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 320
	%struct.DSOCacheEntry {
		i64 5245831624004909525, ; hash 0x48ccf0118452b9d5, from name: libaot-System.Runtime.Serialization.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.118, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 321
	%struct.DSOCacheEntry {
		i64 5252475915471893752, ; hash 0x48e48b042cff34f8, from name: Microsoft.AspNetCore.Authorization.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.109, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 322
	%struct.DSOCacheEntry {
		i64 5255546469364035812, ; hash 0x48ef73ab370070e4, from name: aot-Xamarin.AndroidX.Activity.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.169, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 323
	%struct.DSOCacheEntry {
		i64 5266401548478623734, ; hash 0x4916044e45a2aff6, from name: aot-Xamarin.Google.Android.Material
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 324
	%struct.DSOCacheEntry {
		i64 5266659643402539735, ; hash 0x4916ef0aade4d2d7, from name: Microsoft.Maui.Essentials.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.134, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 325
	%struct.DSOCacheEntry {
		i64 5267519814036117019, ; hash 0x4919fd5cc2f4561b, from name: System.Reflection.Emit.Lightweight.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.142, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 326
	%struct.DSOCacheEntry {
		i64 5275640202392289004, ; hash 0x4936d6d0025cbeec, from name: aot-Syncfusion.Blazor.Spinner
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.102, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 327
	%struct.DSOCacheEntry {
		i64 5290786973231294105, ; hash 0x496ca6b869b72699, from name: System.Runtime.Loader
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.173, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 328
	%struct.DSOCacheEntry {
		i64 5308986387694949770, ; hash 0x49ad4efdcbf1158a, from name: libaot-Microsoft.AspNetCore.ResponseCaching.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__DSOCacheEntry_name.167, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 329
	%struct.DSOCacheEntry {
		i64 5321274733690245161, ; hash 0x49d8f72d4dde5029, from name: Microsoft.Extensions.FileProviders.Physical.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__DSOCacheEntry_name.79, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 330
	%struct.DSOCacheEntry {
		i64 5334205502128732672, ; hash 0x4a06e7a471513a00, from name: aot-System.Runtime
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.114, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 331
	%struct.DSOCacheEntry {
		i64 5336742949158248691, ; hash 0x4a0feb6fde25e0f3, from name: libaot-Microsoft.AspNetCore.Components.Forms.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.159, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 332
	%struct.DSOCacheEntry {
		i64 5357730750035168269, ; hash 0x4a5a7bbb0e088c0d, from name: Microsoft.AspNetCore.SignalR.Client.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.86, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 333
	%struct.DSOCacheEntry {
		i64 5366974786996218887, ; hash 0x4a7b532221632c07, from name: libaot-Microsoft.Maui.Essentials
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.134, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 334
	%struct.DSOCacheEntry {
		i64 5383791439875194336, ; hash 0x4ab711ca3e8cbde0, from name: libaot-Syncfusion.Blazor.Navigations
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 335
	%struct.DSOCacheEntry {
		i64 5418751440481470487, ; hash 0x4b3345b9b008c817, from name: libaot-Microsoft.IdentityModel.Logging
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 336
	%struct.DSOCacheEntry {
		i64 5423376490970181369, ; hash 0x4b43b42f2b7b6ef9, from name: System.Runtime.InteropServices.RuntimeInformation
		i8 0, ; ignore
		i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__DSOCacheEntry_name.116, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 337
	%struct.DSOCacheEntry {
		i64 5428475970428150530, ; hash 0x4b55d222411d2302, from name: System.Buffers.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 338
	%struct.DSOCacheEntry {
		i64 5438005991099355802, ; hash 0x4b77ada319ec529a, from name: aot-System.Web.HttpUtility.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 339
	%struct.DSOCacheEntry {
		i64 5440481460344582099, ; hash 0x4b80791032efefd3, from name: libaot-System.Numerics.Vectors.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.121, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 340
	%struct.DSOCacheEntry {
		i64 5440509253780790378, ; hash 0x4b8092575cd45c6a, from name: Syncfusion.Blazor.Themes.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.174, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 341
	%struct.DSOCacheEntry {
		i64 5446034149219586269, ; hash 0x4b94333452e150dd, from name: System.Diagnostics.Debug
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 342
	%struct.DSOCacheEntry {
		i64 5457831460348668792, ; hash 0x4bbe1ccbde08ab78, from name: libaot-Microsoft.AspNetCore.Components.WebView
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.175, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 343
	%struct.DSOCacheEntry {
		i64 5479418050698653789, ; hash 0x4c0acdaf97c1b05d, from name: libaot-System.ComponentModel.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 344
	%struct.DSOCacheEntry {
		i64 5491070175078033306, ; hash 0x4c34333b3644a79a, from name: Microsoft.IdentityModel.Tokens.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.176, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 345
	%struct.DSOCacheEntry {
		i64 5554419957827635904, ; hash 0x4d154385e7a80ac0, from name: libaot-System.Net.Sockets
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.138, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 346
	%struct.DSOCacheEntry {
		i64 5566687699522499494, ; hash 0x4d40d8f8199333a6, from name: libaot-Syncfusion.Blazor.Spinner
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.102, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 347
	%struct.DSOCacheEntry {
		i64 5570799893513421663, ; hash 0x4d4f74fcdfa6c35f, from name: System.IO.Compression.Brotli
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.139, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 348
	%struct.DSOCacheEntry {
		i64 5591791169662171124, ; hash 0x4d9a087135e137f4, from name: System.Linq.Parallel
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 349
	%struct.DSOCacheEntry {
		i64 5610410666584071604, ; hash 0x4ddc2ec6a9ce5db4, from name: Syncfusion.Blazor.DropDowns.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.160, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 350
	%struct.DSOCacheEntry {
		i64 5610815111739789596, ; hash 0x4ddd9e9de3a4d11c, from name: Microsoft.AspNetCore.Authentication.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.120, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 351
	%struct.DSOCacheEntry {
		i64 5647286806239336998, ; hash 0x4e5f316dfea55a26, from name: Xamarin.AndroidX.Window.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.172, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 352
	%struct.DSOCacheEntry {
		i64 5659143991835670710, ; hash 0x4e89517a2626b8b6, from name: aot-420BytesClient.DT
		i8 0, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.156, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 353
	%struct.DSOCacheEntry {
		i64 5661857649196835739, ; hash 0x4e92f588bd34a39b, from name: aot-Xamarin.AndroidX.Security.SecurityCrypto
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.95, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 354
	%struct.DSOCacheEntry {
		i64 5678506072386041620, ; hash 0x4ece1b2fd377f714, from name: aot-System.Buffers
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 355
	%struct.DSOCacheEntry {
		i64 5718066319469868703, ; hash 0x4f5aa7059e20769f, from name: System.Private.DataContractSerialization.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 356
	%struct.DSOCacheEntry {
		i64 5759268217942071081, ; hash 0x4fed07ee28a25729, from name: aot-Xamarin.AndroidX.AppCompat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 357
	%struct.DSOCacheEntry {
		i64 5805775785595976806, ; hash 0x5092425112033c66, from name: libaot-Microsoft.AspNetCore.Http.Features
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.170, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 358
	%struct.DSOCacheEntry {
		i64 5896632681676645413, ; hash 0x51d50c2eaa4ba425, from name: Microsoft.Extensions.DependencyModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.177, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 359
	%struct.DSOCacheEntry {
		i64 5900900230463535802, ; hash 0x51e4357ecbccbaba, from name: System.Security.Cryptography.Native.Android.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.81, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 360
	%struct.DSOCacheEntry {
		i64 5948985717485083712, ; hash 0x528f0afdb0921c40, from name: libSystem.Native.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.178, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 361
	%struct.DSOCacheEntry {
		i64 5958220530006169673, ; hash 0x52afda0108751849, from name: System.Net.Requests.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.145, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 362
	%struct.DSOCacheEntry {
		i64 5979151488806146654, ; hash 0x52fa3699a489d25e, from name: System.Formats.Asn1
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.179, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 363
	%struct.DSOCacheEntry {
		i64 5984759512290286505, ; hash 0x530e23115c33dba9, from name: System.Security.Cryptography.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.123, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 364
	%struct.DSOCacheEntry {
		i64 6019580974212452262, ; hash 0x5389d900c0a20fa6, from name: libaot-System.Diagnostics.Debug.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 365
	%struct.DSOCacheEntry {
		i64 6025044635461621784, ; hash 0x539d422c84901818, from name: aot-Syncfusion.Blazor.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 366
	%struct.DSOCacheEntry {
		i64 6027563593999215487, ; hash 0x53a6352741666b7f, from name: libaot-System.Reflection.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 367
	%struct.DSOCacheEntry {
		i64 6069444521208265984, ; hash 0x543affa27e8f3d00, from name: aot-Microsoft.Extensions.DependencyInjection.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__DSOCacheEntry_name.180, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 368
	%struct.DSOCacheEntry {
		i64 6071906843195573636, ; hash 0x5443bf1a81ef8584, from name: aot-Microsoft.AspNetCore.Hosting.Server.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 369
	%struct.DSOCacheEntry {
		i64 6076224371281935956, ; hash 0x545315df59d4be54, from name: System.Xml.XDocument.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.181, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 370
	%struct.DSOCacheEntry {
		i64 6101796183000239934, ; hash 0x54adef4cbb904f3e, from name: Microsoft.AspNetCore.WebUtilities.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 371
	%struct.DSOCacheEntry {
		i64 6105283356374938719, ; hash 0x54ba52dd8dd5345f, from name: libaot-Syncfusion.Blazor.Inputs
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.88, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 372
	%struct.DSOCacheEntry {
		i64 6153263910407647837, ; hash 0x5564c8ecd514325d, from name: aot-System.Security.Cryptography.Algorithms.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 373
	%struct.DSOCacheEntry {
		i64 6182525717148725503, ; hash 0x55ccbe62215df0ff, from name: Microsoft.AspNetCore.Components.Authorization
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 374
	%struct.DSOCacheEntry {
		i64 6198196371300036003, ; hash 0x56046ac29f742da3, from name: libaot-Microsoft.Extensions.Configuration.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__DSOCacheEntry_name.90, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 375
	%struct.DSOCacheEntry {
		i64 6222212889482781913, ; hash 0x5659bda8027a64d9, from name: Microsoft.AspNetCore.Components.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.82, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 376
	%struct.DSOCacheEntry {
		i64 6251033168959842974, ; hash 0x56c0218c3b092a9e, from name: libaot-System.Web.HttpUtility.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 377
	%struct.DSOCacheEntry {
		i64 6254363954942387252, ; hash 0x56cbf6e146592434, from name: aot-Syncfusion.Blazor.Navigations.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 378
	%struct.DSOCacheEntry {
		i64 6278736998281604212, ; hash 0x57228e08a4ad6c74, from name: System.Private.DataContractSerialization
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 379
	%struct.DSOCacheEntry {
		i64 6284145129771520194, ; hash 0x5735c4b3610850c2, from name: System.Reflection.Emit.ILGeneration
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.78, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 380
	%struct.DSOCacheEntry {
		i64 6299913390656605195, ; hash 0x576dc9d9b5d04c0b, from name: libaot-Microsoft.Extensions.Features.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.182, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 381
	%struct.DSOCacheEntry {
		i64 6308061292769401015, ; hash 0x578abc5300e958b7, from name: libSystem.Native
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.178, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 382
	%struct.DSOCacheEntry {
		i64 6309031637591895059, ; hash 0x578e2ed9035dac13, from name: aot-System.ComponentModel.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 383
	%struct.DSOCacheEntry {
		i64 6342692645518226948, ; hash 0x5805c55b2798b604, from name: Xamarin.AndroidX.CursorAdapter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 384
	%struct.DSOCacheEntry {
		i64 6352489697598145066, ; hash 0x582893b918aa822a, from name: Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.117, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 385
	%struct.DSOCacheEntry {
		i64 6385611344971160469, ; hash 0x589e3faf92b5db95, from name: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.183, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 386
	%struct.DSOCacheEntry {
		i64 6401687960814735282, ; hash 0x58d75d486341cfb2, from name: Xamarin.AndroidX.Lifecycle.LiveData.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.94, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 387
	%struct.DSOCacheEntry {
		i64 6404578999226158050, ; hash 0x58e1a2aab8cd4be2, from name: libaot-System.Linq.Queryable
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.184, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 388
	%struct.DSOCacheEntry {
		i64 6405204536431531535, ; hash 0x58e3db96f3b8d60f, from name: aot-Microsoft.AspNetCore.Http.Connections.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 389
	%struct.DSOCacheEntry {
		i64 6426338477556940576, ; hash 0x592ef0cc1134bf20, from name: libaot-Syncfusion.Blazor.SplitButtons.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 390
	%struct.DSOCacheEntry {
		i64 6465947575367127185, ; hash 0x59bba90fce0e5091, from name: System.IO.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 391
	%struct.DSOCacheEntry {
		i64 6488258789742214262, ; hash 0x5a0aecfe3563fc76, from name: aot-System.Collections.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 392
	%struct.DSOCacheEntry {
		i64 6496174396349718907, ; hash 0x5a270c31fd69a17b, from name: libaot-System.Runtime.Serialization.Xml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.130, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 393
	%struct.DSOCacheEntry {
		i64 6497688098531050961, ; hash 0x5a2c6ce63e3a05d1, from name: aot-System.Threading.ThreadPool
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.151, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 394
	%struct.DSOCacheEntry {
		i64 6521880595188375514, ; hash 0x5a825fd8cfb75fda, from name: aot-Newtonsoft.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 395
	%struct.DSOCacheEntry {
		i64 6523721327372428984, ; hash 0x5a88e9fbabac66b8, from name: aot-Microsoft.Extensions.Features.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.182, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 396
	%struct.DSOCacheEntry {
		i64 6537874782639607181, ; hash 0x5abb3279c537cd8d, from name: Microsoft.Extensions.Features.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.182, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 397
	%struct.DSOCacheEntry {
		i64 6560151584539558821, ; hash 0x5b0a571be53243a5, from name: Microsoft.Extensions.Options
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.101, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 398
	%struct.DSOCacheEntry {
		i64 6560588458386133218, ; hash 0x5b0be47183a210e2, from name: libaot-Xamarin.AndroidX.RecyclerView
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 399
	%struct.DSOCacheEntry {
		i64 6585761955673789047, ; hash 0x5b65539b1737d277, from name: aot-Microsoft.Extensions.Features
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.182, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 400
	%struct.DSOCacheEntry {
		i64 6594663189110128169, ; hash 0x5b84f33b0040fe29, from name: System.Runtime.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 401
	%struct.DSOCacheEntry {
		i64 6610894179593321960, ; hash 0x5bbe9d3af65b7de8, from name: System.Linq.Parallel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 402
	%struct.DSOCacheEntry {
		i64 6635659305191820255, ; hash 0x5c1698fb18794bdf, from name: libaot-Microsoft.IdentityModel.Logging.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 403
	%struct.DSOCacheEntry {
		i64 6672263946731405092, ; hash 0x5c98a4b558923f24, from name: aot-Xamarin.AndroidX.ViewPager2.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.89, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 404
	%struct.DSOCacheEntry {
		i64 6679219254897596376, ; hash 0x5cb15a86391ed7d8, from name: Microsoft.Maui.Controls.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.132, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 405
	%struct.DSOCacheEntry {
		i64 6684146301435635176, ; hash 0x5cc2dba5a3cfe5e8, from name: libaot-Microsoft.AspNetCore.Http.Connections.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 406
	%struct.DSOCacheEntry {
		i64 6691447486091868327, ; hash 0x5cdccc0929afb8a7, from name: aot-Microsoft.AspNetCore.Http.Connections.Client
		i8 0, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 407
	%struct.DSOCacheEntry {
		i64 6783125919820072783, ; hash 0x5e228115e59ec74f, from name: Microsoft.AspNetCore.Connections.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 408
	%struct.DSOCacheEntry {
		i64 6798854742990932047, ; hash 0x5e5a625deb74484f, from name: aot-Microsoft.AspNetCore.SignalR.Protocols.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 409
	%struct.DSOCacheEntry {
		i64 6811092106988893788, ; hash 0x5e85dc2f418a365c, from name: aot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.117, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 410
	%struct.DSOCacheEntry {
		i64 6817628571150090235, ; hash 0x5e9d151069f47ffb, from name: aot-Microsoft.Extensions.FileProviders.Physical
		i8 0, ; ignore
		i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__DSOCacheEntry_name.79, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 411
	%struct.DSOCacheEntry {
		i64 6823908842742477602, ; hash 0x5eb364f0174ff322, from name: aot-Microsoft.Extensions.Localization.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.100, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 412
	%struct.DSOCacheEntry {
		i64 6836385375498469829, ; hash 0x5edfb8473e4301c5, from name: Xamarin.AndroidX.RecyclerView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 413
	%struct.DSOCacheEntry {
		i64 6849650231544317984, ; hash 0x5f0ed89836df0820, from name: aot-Syncfusion.Licensing
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 414
	%struct.DSOCacheEntry {
		i64 6868151947848616665, ; hash 0x5f5093cebaec8ad9, from name: aot-Microsoft.AspNetCore.Components
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.82, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 415
	%struct.DSOCacheEntry {
		i64 6876862101832370452, ; hash 0x5f6f85a57d108914, from name: System.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.133, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 416
	%struct.DSOCacheEntry {
		i64 6879679050593672945, ; hash 0x5f7987a57b551ef1, from name: libaot-Xamarin.AndroidX.CardView
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 417
	%struct.DSOCacheEntry {
		i64 6880463258598638905, ; hash 0x5f7c50e122e60539, from name: aot-Microsoft.AspNetCore.SignalR.Client.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.86, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 418
	%struct.DSOCacheEntry {
		i64 6894844156784520562, ; hash 0x5faf683aead1ad72, from name: System.Numerics.Vectors
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.121, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 419
	%struct.DSOCacheEntry {
		i64 6911788284027924527, ; hash 0x5feb9ad2f830f02f, from name: Microsoft.AspNetCore.Hosting.Server.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 420
	%struct.DSOCacheEntry {
		i64 6913716284728566067, ; hash 0x5ff274549d146133, from name: System.IO.Compression.Native.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.185, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 421
	%struct.DSOCacheEntry {
		i64 6917769210764326931, ; hash 0x6000da71fdbdf813, from name: libaot-Microsoft.Maui.Controls.Compatibility.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 422
	%struct.DSOCacheEntry {
		i64 6920570528939222495, ; hash 0x600ace3ab475a5df, from name: Microsoft.AspNetCore.Components.WebView
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.175, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 423
	%struct.DSOCacheEntry {
		i64 6939500170921529390, ; hash 0x604e0ea36e8a502e, from name: libaot-Microsoft.Net.Http.Headers
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.80, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 424
	%struct.DSOCacheEntry {
		i64 6958582195727285906, ; hash 0x6091d9a38caebe92, from name: libaot-Syncfusion.Blazor.Navigations.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 425
	%struct.DSOCacheEntry {
		i64 6993628010754849192, ; hash 0x610e5b9f3843b9a8, from name: libaot-Microsoft.Maui.Controls.Xaml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.96, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 426
	%struct.DSOCacheEntry {
		i64 7005231924406374519, ; hash 0x61379551e777d077, from name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.94, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 427
	%struct.DSOCacheEntry {
		i64 7005623937201008400, ; hash 0x6138f9da7ed6ef10, from name: libaot-System.Reflection.Emit.Lightweight.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.142, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 428
	%struct.DSOCacheEntry {
		i64 7016641973531807373, ; hash 0x61601eb2fc758e8d, from name: libaot-Microsoft.JSInterop.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 429
	%struct.DSOCacheEntry {
		i64 7017588408768804231, ; hash 0x61637b7a1c903587, from name: Microsoft.AspNetCore.SignalR.Protocols.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 430
	%struct.DSOCacheEntry {
		i64 7026076528261849631, ; hash 0x6181a3606fc1e21f, from name: libaot-Xamarin.Kotlin.StdLib
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 431
	%struct.DSOCacheEntry {
		i64 7032820184502538532, ; hash 0x619998b242789124, from name: libaot-System.Net.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 432
	%struct.DSOCacheEntry {
		i64 7086827931071621775, ; hash 0x62597874a7d72a8f, from name: aot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 433
	%struct.DSOCacheEntry {
		i64 7112547816752919026, ; hash 0x62b4d88e3189b1f2, from name: System.IO.FileSystem
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.166, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 434
	%struct.DSOCacheEntry {
		i64 7136925810822744514, ; hash 0x630b74363e6809c2, from name: Microsoft.IdentityModel.Logging.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 435
	%struct.DSOCacheEntry {
		i64 7146110801539337461, ; hash 0x632c15e98b558cf5, from name: aot-System.Threading.ThreadPool.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.151, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 436
	%struct.DSOCacheEntry {
		i64 7146733078410969911, ; hash 0x632e4bdeab384337, from name: aot-System.Text.Encoding.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.186, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 437
	%struct.DSOCacheEntry {
		i64 7149762907828324447, ; hash 0x63390f7bcd5f085f, from name: System.ComponentModel.Annotations.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 438
	%struct.DSOCacheEntry {
		i64 7158980933159661101, ; hash 0x6359cf3a92c6ae2d, from name: aot-Microsoft.AspNetCore.Mvc.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.131, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 439
	%struct.DSOCacheEntry {
		i64 7159690850612219724, ; hash 0x635c54e51c5b0f4c, from name: libaot-System.IO.FileSystem.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.166, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 440
	%struct.DSOCacheEntry {
		i64 7170898501740947905, ; hash 0x63842631bca669c1, from name: Microsoft.AspNetCore.Components.Forms.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.159, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 441
	%struct.DSOCacheEntry {
		i64 7198932752074671326, ; hash 0x63e7bf32495604de, from name: libaot-Xamarin.AndroidX.Collection
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 442
	%struct.DSOCacheEntry {
		i64 7206699016636673907, ; hash 0x64035692a9c92f73, from name: aot-System.Text.Encoding
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.186, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 443
	%struct.DSOCacheEntry {
		i64 7254050341552555985, ; hash 0x64ab905a1f0a87d1, from name: aot-Microsoft.Extensions.Localization.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.187, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 444
	%struct.DSOCacheEntry {
		i64 7260863994773921465, ; hash 0x64c3c55562ec5eb9, from name: libaot-System.Security.Claims
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 445
	%struct.DSOCacheEntry {
		i64 7270811800166795866, ; hash 0x64e71ccf51a90a5a, from name: System.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.188, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 446
	%struct.DSOCacheEntry {
		i64 7286834274487352090, ; hash 0x6520092a53f5bb1a, from name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.105, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 447
	%struct.DSOCacheEntry {
		i64 7287078049759399551, ; hash 0x6520e6e0ae748e7f, from name: libaot-Xamarin.AndroidX.Window
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.172, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 448
	%struct.DSOCacheEntry {
		i64 7289396155428031695, ; hash 0x6529232eb762cccf, from name: Xamarin.AndroidX.Navigation.Runtime.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.99, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 449
	%struct.DSOCacheEntry {
		i64 7293199643205339005, ; hash 0x6536a66f3942877d, from name: aot-Xamarin.AndroidX.CustomView
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.189, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 450
	%struct.DSOCacheEntry {
		i64 7338192458477945005, ; hash 0x65d67f295d0740ad, from name: System.Reflection
		i8 0, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.93, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 451
	%struct.DSOCacheEntry {
		i64 7338982286544642983, ; hash 0x65d94d818a60a3a7, from name: monodroid.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.190, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 452
	%struct.DSOCacheEntry {
		i64 7343755648263762692, ; hash 0x65ea42da6c07b304, from name: System.Net.WebSockets.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 453
	%struct.DSOCacheEntry {
		i64 7352604061824605300, ; hash 0x6609b2703f265c74, from name: Microsoft.Extensions.FileProviders.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__DSOCacheEntry_name.135, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 454
	%struct.DSOCacheEntry {
		i64 7360162326696369129, ; hash 0x66248ca3ebf31be9, from name: libaot-Microsoft.AspNetCore.Components.WebView.Maui
		i8 0, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.191, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 455
	%struct.DSOCacheEntry {
		i64 7378473378125181690, ; hash 0x66659a71cfd3f2fa, from name: Syncfusion.Blazor.Calendars
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.149, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 456
	%struct.DSOCacheEntry {
		i64 7381472336305914060, ; hash 0x667041fb2ce300cc, from name: aot-System.Security.Cryptography.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.123, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 457
	%struct.DSOCacheEntry {
		i64 7393269986360208929, ; hash 0x669a2be1a18eae21, from name: aot-System.Net.WebSockets
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 458
	%struct.DSOCacheEntry {
		i64 7410209401095475185, ; hash 0x66d65a30778e4ff1, from name: Microsoft.Extensions.Localization.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.187, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 459
	%struct.DSOCacheEntry {
		i64 7447924280570395180, ; hash 0x675c57ac2167ba2c, from name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.192, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 460
	%struct.DSOCacheEntry {
		i64 7465578309990517956, ; hash 0x679b0feb29d88cc4, from name: aot-System.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.124, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 461
	%struct.DSOCacheEntry {
		i64 7473077275758116397, ; hash 0x67b5b430309b3e2d, from name: Microsoft.DotNet.PlatformAbstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.97, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 462
	%struct.DSOCacheEntry {
		i64 7477302391979602800, ; hash 0x67c4b6e8b81f7370, from name: Xamarin.AndroidX.CardView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 463
	%struct.DSOCacheEntry {
		i64 7484096333359613774, ; hash 0x67dcd9f676b4074e, from name: libaot-System.Net.Security
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.193, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 464
	%struct.DSOCacheEntry {
		i64 7489048572193775167, ; hash 0x67ee71ff6b419e3f, from name: System.ObjectModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 465
	%struct.DSOCacheEntry {
		i64 7496222613193209122, ; hash 0x6807eec000a1b522, from name: System.IdentityModel.Tokens.Jwt
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.111, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 466
	%struct.DSOCacheEntry {
		i64 7506927217982139119, ; hash 0x682df68806896aef, from name: Syncfusion.Blazor.Inputs.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.88, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 467
	%struct.DSOCacheEntry {
		i64 7514939451885975947, ; hash 0x684a6d9d9a3b798b, from name: System.Runtime.Serialization.Xml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.130, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 468
	%struct.DSOCacheEntry {
		i64 7515511324144895830, ; hash 0x684c75bafd150756, from name: System.Collections.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 469
	%struct.DSOCacheEntry {
		i64 7532437531913037246, ; hash 0x68889806d67f25be, from name: libaot-Xamarin.AndroidX.Navigation.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 470
	%struct.DSOCacheEntry {
		i64 7535601351437907993, ; hash 0x6893d580f968f819, from name: System.Net.Http.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.194, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 471
	%struct.DSOCacheEntry {
		i64 7564660874610836040, ; hash 0x68fb12fc75798248, from name: Xamarin.AndroidX.CustomView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.189, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 472
	%struct.DSOCacheEntry {
		i64 7603299711682212348, ; hash 0x698458cdc3a5f1fc, from name: aot-System.Collections.NonGeneric.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.84, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 473
	%struct.DSOCacheEntry {
		i64 7639941140308737920, ; hash 0x6a0685fd2cfebf80, from name: libSystem.IO.Compression.Native.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.185, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 474
	%struct.DSOCacheEntry {
		i64 7640815069151536100, ; hash 0x6a09a0d2973aa3e4, from name: libaot-System.Threading.Channels
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 475
	%struct.DSOCacheEntry {
		i64 7654504624184590948, ; hash 0x6a3a4366801b8264, from name: System.Net.Http
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.194, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 476
	%struct.DSOCacheEntry {
		i64 7658328537957887241, ; hash 0x6a47d93ace376d09, from name: libaot-Xamarin.Google.Android.Material
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 477
	%struct.DSOCacheEntry {
		i64 7673446916582303699, ; hash 0x6a7d8f50a1b467d3, from name: aot-System.Xml.XDocument.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.181, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 478
	%struct.DSOCacheEntry {
		i64 7675303261932883976, ; hash 0x6a8427a6b6e81008, from name: aot-System.Runtime.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.114, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 479
	%struct.DSOCacheEntry {
		i64 7695876457946633523, ; hash 0x6acd3edd2f335533, from name: aot-System.Text.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.195, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 480
	%struct.DSOCacheEntry {
		i64 7714652370974252055, ; hash 0x6b0ff375198b9c17, from name: System.Private.CoreLib
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.144, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 481
	%struct.DSOCacheEntry {
		i64 7730148997998179648, ; hash 0x6b47018ebe85f540, from name: aot-Microsoft.AspNetCore.Authorization.Policy
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.126, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 482
	%struct.DSOCacheEntry {
		i64 7735176074855944702, ; hash 0x6b58dda848e391fe, from name: Microsoft.CSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 483
	%struct.DSOCacheEntry {
		i64 7740286304433625072, ; hash 0x6b6b0562539657f0, from name: libmonosgen-2.0
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.196, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 484
	%struct.DSOCacheEntry {
		i64 7749953592123090193, ; hash 0x6b8d5dbb24426511, from name: aot-MudBlazor
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.87, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 485
	%struct.DSOCacheEntry {
		i64 7759661773326470811, ; hash 0x6bafdb45384d4e9b, from name: aot-Microsoft.Maui.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 486
	%struct.DSOCacheEntry {
		i64 7770273181952392915, ; hash 0x6bd58e4a52043ed3, from name: aot-System.Linq.Queryable
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.184, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 487
	%struct.DSOCacheEntry {
		i64 7775464348757467397, ; hash 0x6be7ffa107672105, from name: libaot-Xamarin.AndroidX.CustomView
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.189, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 488
	%struct.DSOCacheEntry {
		i64 7778606931357632082, ; hash 0x6bf329ca8ef68652, from name: Microsoft.IdentityModel.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.152, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 489
	%struct.DSOCacheEntry {
		i64 7780906328696880158, ; hash 0x6bfb5514b890fc1e, from name: libaot-System.Linq.Parallel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 490
	%struct.DSOCacheEntry {
		i64 7791274192101278370, ; hash 0x6c202a9907dd82a2, from name: aot-Microsoft.DotNet.PlatformAbstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.97, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 491
	%struct.DSOCacheEntry {
		i64 7836164640616011524, ; hash 0x6cbfa6390d64d704, from name: Xamarin.AndroidX.AppCompat.AppCompatResources
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.192, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 492
	%struct.DSOCacheEntry {
		i64 7855888427540559711, ; hash 0x6d05b8e70ea8375f, from name: System.Console.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 493
	%struct.DSOCacheEntry {
		i64 7897713672933564717, ; hash 0x6d9a50bddcf3612d, from name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__DSOCacheEntry_name.180, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 494
	%struct.DSOCacheEntry {
		i64 7935734530999686447, ; hash 0x6e216482b809952f, from name: Syncfusion.Blazor.Schedule.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.197, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 495
	%struct.DSOCacheEntry {
		i64 7944355990155369577, ; hash 0x6e4005ae9a751c69, from name: Microsoft.AspNetCore.Authorization.Policy.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.126, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 496
	%struct.DSOCacheEntry {
		i64 7948127817007369596, ; hash 0x6e4d6c237a200d7c, from name: aot-System.Private.Xml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.198, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 497
	%struct.DSOCacheEntry {
		i64 7952166940225298437, ; hash 0x6e5bc5b322bbe005, from name: libaot-Microsoft.AspNetCore.Components.Authorization
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 498
	%struct.DSOCacheEntry {
		i64 7968925550521657015, ; hash 0x6e974f912860a6b7, from name: aot-System.Net.Sockets
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.138, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 499
	%struct.DSOCacheEntry {
		i64 7974095695751206426, ; hash 0x6ea9adc96638d61a, from name: libaot-System.Text.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.195, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 500
	%struct.DSOCacheEntry {
		i64 7999522516831815956, ; hash 0x6f040358847fc914, from name: libaot-Syncfusion.Blazor.Spinner.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.102, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 501
	%struct.DSOCacheEntry {
		i64 8046460106795142811, ; hash 0x6faac4d5cce04e9b, from name: aot-Microsoft.Maui.Controls
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.132, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 502
	%struct.DSOCacheEntry {
		i64 8055805234606573381, ; hash 0x6fcbf82dec750745, from name: aot-Microsoft.Extensions.FileProviders.Physical.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__DSOCacheEntry_name.79, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 503
	%struct.DSOCacheEntry {
		i64 8069027220385562465, ; hash 0x6ffaf1816209ff61, from name: aot-System.Text.Encodings.Web
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.110, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 504
	%struct.DSOCacheEntry {
		i64 8087206902342787202, ; hash 0x703b87d46f3aa082, from name: System.Diagnostics.DiagnosticSource
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.105, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 505
	%struct.DSOCacheEntry {
		i64 8113615946733131500, ; hash 0x70995ab73cf916ec, from name: System.Reflection.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 506
	%struct.DSOCacheEntry {
		i64 8121986787924996947, ; hash 0x70b717f394af7353, from name: libaot-Syncfusion.Blazor.SplitButtons
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 507
	%struct.DSOCacheEntry {
		i64 8122601500019512551, ; hash 0x70b9470764b7d4e7, from name: aot-Microsoft.AspNetCore.Routing
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.137, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 508
	%struct.DSOCacheEntry {
		i64 8127069655002304285, ; hash 0x70c926cacb44cf1d, from name: libaot-System.Security.Cryptography.Cng.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.171, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 509
	%struct.DSOCacheEntry {
		i64 8130723718771181016, ; hash 0x70d62224d03305d8, from name: aot-Microsoft.AspNetCore.Components.Web.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 510
	%struct.DSOCacheEntry {
		i64 8150551902651424003, ; hash 0x711c93c5a0ec1d03, from name: aot-System.Xml.ReaderWriter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.141, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 511
	%struct.DSOCacheEntry {
		i64 8177832365675968076, ; hash 0x717d7f3564cef64c, from name: System.Text.Encoding.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.186, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 512
	%struct.DSOCacheEntry {
		i64 8182249955663251293, ; hash 0x718d30fbb6c3875d, from name: Syncfusion.Blazor.Data.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.199, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 513
	%struct.DSOCacheEntry {
		i64 8185542183669246576, ; hash 0x7198e33f4794aa70, from name: System.Collections
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 514
	%struct.DSOCacheEntry {
		i64 8189823481260868218, ; hash 0x71a819108db5027a, from name: libaot-System.Collections.Concurrent
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.104, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 515
	%struct.DSOCacheEntry {
		i64 8193891657253884887, ; hash 0x71b68d0c96a793d7, from name: Syncfusion.Blazor.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 516
	%struct.DSOCacheEntry {
		i64 8194834465862853806, ; hash 0x71b9e68752e224ae, from name: aot-Microsoft.IdentityModel.Tokens.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.176, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 517
	%struct.DSOCacheEntry {
		i64 8228747456654734221, ; hash 0x72326236cc4df38d, from name: libaot-System.Security.Cryptography.Encoding.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.129, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 518
	%struct.DSOCacheEntry {
		i64 8290740647658429042, ; hash 0x730ea0b15c929a72, from name: System.Runtime.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 519
	%struct.DSOCacheEntry {
		i64 8298665547085841745, ; hash 0x732ac858cbd30551, from name: aot-System.Text.Encodings.Web.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.110, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 520
	%struct.DSOCacheEntry {
		i64 8335746768722831773, ; hash 0x73ae85857f55a99d, from name: aot-System.Runtime.Numerics
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 521
	%struct.DSOCacheEntry {
		i64 8336567361463961013, ; hash 0x73b16fd8a22cc5b5, from name: libaot-Microsoft.Extensions.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 522
	%struct.DSOCacheEntry {
		i64 8340594550852286012, ; hash 0x73bfbe8dbb1bf63c, from name: aot-System.Runtime.InteropServices.RuntimeInformation.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__DSOCacheEntry_name.116, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 523
	%struct.DSOCacheEntry {
		i64 8362087432769215690, ; hash 0x740c1a3742f79cca, from name: System.Private.Xml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.198, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 524
	%struct.DSOCacheEntry {
		i64 8368701292315763008, ; hash 0x7423997c6fd56140, from name: System.Security.Cryptography
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 525
	%struct.DSOCacheEntry {
		i64 8375722837974120975, ; hash 0x743c8b8b6e92fa0f, from name: aot-System.Runtime.Serialization.Formatters.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.127, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 526
	%struct.DSOCacheEntry {
		i64 8382924305585776176, ; hash 0x7456213dc56da630, from name: Xamarin.AndroidX.ViewPager2.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.89, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 527
	%struct.DSOCacheEntry {
		i64 8392333777418328833, ; hash 0x74778f1b27881b01, from name: libmonodroid.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.190, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 528
	%struct.DSOCacheEntry {
		i64 8411503554270155775, ; hash 0x74bba9eaa33553ff, from name: aot-System.IO.FileSystem
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.166, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 529
	%struct.DSOCacheEntry {
		i64 8466993038139643024, ; hash 0x7580cd4ee204d490, from name: System.Xml.ReaderWriter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.141, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 530
	%struct.DSOCacheEntry {
		i64 8470680757392014285, ; hash 0x758de744ee167bcd, from name: System.Reactive.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.200, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 531
	%struct.DSOCacheEntry {
		i64 8478719509125675648, ; hash 0x75aa7678ab9c3a80, from name: aot-Microsoft.Extensions.Options
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.101, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 532
	%struct.DSOCacheEntry {
		i64 8495939495770650607, ; hash 0x75e7a3f53e9ef7ef, from name: Microsoft.AspNetCore.Http.Features.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.170, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 533
	%struct.DSOCacheEntry {
		i64 8522025752637549819, ; hash 0x7644514538b12cfb, from name: aot-Mono.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 534
	%struct.DSOCacheEntry {
		i64 8539930972764622299, ; hash 0x7683edf925fdcddb, from name: aot-Xamarin.AndroidX.Navigation.UI.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.201, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 535
	%struct.DSOCacheEntry {
		i64 8539996951313872355, ; hash 0x768429faf9fb75e3, from name: libaot-System.Reactive.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.200, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 536
	%struct.DSOCacheEntry {
		i64 8559823793180265667, ; hash 0x76ca9a6354724cc3, from name: aot-Microsoft.AspNetCore.Components.Forms.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.159, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 537
	%struct.DSOCacheEntry {
		i64 8563666267364444763, ; hash 0x76d841191140ca5b, from name: System.Private.Uri
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.202, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 538
	%struct.DSOCacheEntry {
		i64 8564011851013502176, ; hash 0x76d97b6787e534e0, from name: libaot-Microsoft.AspNetCore.Components.WebView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.175, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 539
	%struct.DSOCacheEntry {
		i64 8572732944665407299, ; hash 0x76f877316111ef43, from name: aot-System.ComponentModel.Annotations.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 540
	%struct.DSOCacheEntry {
		i64 8579148903550987409, ; hash 0x770f42793756ac91, from name: aot-System.Net.Security.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.193, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 541
	%struct.DSOCacheEntry {
		i64 8586443500336030524, ; hash 0x77292cdee17da33c, from name: libaot-System.IdentityModel.Tokens.Jwt
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.111, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 542
	%struct.DSOCacheEntry {
		i64 8588250480327178061, ; hash 0x772f984f31fab74d, from name: libaot-420BytesClient.DT
		i8 0, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.156, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 543
	%struct.DSOCacheEntry {
		i64 8612207396229290788, ; hash 0x7784b4ff583d1b24, from name: aot-System.Net.Http.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.194, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 544
	%struct.DSOCacheEntry {
		i64 8623099412595258045, ; hash 0x77ab673a869eb2bd, from name: libaot-System.Text.Encodings.Web.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.110, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 545
	%struct.DSOCacheEntry {
		i64 8626175481042262068, ; hash 0x77b654e585b55834, from name: Java.Interop
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 546
	%struct.DSOCacheEntry {
		i64 8626645781824515032, ; hash 0x77b800a1f4c5abd8, from name: System.Native
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.178, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 547
	%struct.DSOCacheEntry {
		i64 8628664141348535547, ; hash 0x77bf2c51e73afcfb, from name: Xamarin.AndroidX.Fragment.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.203, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 548
	%struct.DSOCacheEntry {
		i64 8639588376636138208, ; hash 0x77e5fbdaa2fda2e0, from name: Xamarin.AndroidX.Navigation.Runtime
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.99, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 549
	%struct.DSOCacheEntry {
		i64 8644570748181167732, ; hash 0x77f7af4b69123e74, from name: aot-Syncfusion.Blazor.Data
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.199, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 550
	%struct.DSOCacheEntry {
		i64 8653012873262651253, ; hash 0x7815ad5cd3b3d775, from name: System.Security.Cryptography.Cng.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.171, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 551
	%struct.DSOCacheEntry {
		i64 8658236679209272073, ; hash 0x78283c62ed86c309, from name: libaot-Xamarin.AndroidX.ViewPager
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 552
	%struct.DSOCacheEntry {
		i64 8659486139845940425, ; hash 0x782cacc3a6ef94c9, from name: System.Runtime.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.114, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 553
	%struct.DSOCacheEntry {
		i64 8685730186285349017, ; hash 0x7889e995e06cf899, from name: libaot-Microsoft.AspNetCore.Http
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.143, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 554
	%struct.DSOCacheEntry {
		i64 8730145678495508517, ; hash 0x7927b53d8422e825, from name: Xamarin.AndroidX.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 555
	%struct.DSOCacheEntry {
		i64 8747763348793017252, ; hash 0x79664c6b07fd43a4, from name: libaot-System.Private.CoreLib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.144, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 556
	%struct.DSOCacheEntry {
		i64 8760858219412156768, ; hash 0x7994d2222f9f7160, from name: System.Linq.Expressions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 557
	%struct.DSOCacheEntry {
		i64 8761982123773840073, ; hash 0x7998d0518fdccac9, from name: aot-System.Text.RegularExpressions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 558
	%struct.DSOCacheEntry {
		i64 8766290059314527625, ; hash 0x79a81e5cf77afd89, from name: aot-Microsoft.AspNetCore.Routing.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.204, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 559
	%struct.DSOCacheEntry {
		i64 8772604801161716260, ; hash 0x79be8d9660216224, from name: aot-Mono.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 560
	%struct.DSOCacheEntry {
		i64 8774486596666825193, ; hash 0x79c53d1208c099e9, from name: libaot-System.Resources.ResourceManager.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.103, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 561
	%struct.DSOCacheEntry {
		i64 8807218729761537072, ; hash 0x7a3986c5a69a7c30, from name: aot-System.IO.Pipelines.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 562
	%struct.DSOCacheEntry {
		i64 8811753208883510690, ; hash 0x7a49a2db57e8fda2, from name: Syncfusion.Blazor.Themes
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.174, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 563
	%struct.DSOCacheEntry {
		i64 8812786412666749070, ; hash 0x7a4d4e8cd864008e, from name: aot-System.Diagnostics.DiagnosticSource
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.105, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 564
	%struct.DSOCacheEntry {
		i64 8824907823227734965, ; hash 0x7a785ee8ab0e0bb5, from name: aot-System.Private.Uri
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.202, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 565
	%struct.DSOCacheEntry {
		i64 8829817152319216766, ; hash 0x7a89cfeaeba35c7e, from name: System.Reflection.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 566
	%struct.DSOCacheEntry {
		i64 8832596036867187119, ; hash 0x7a93af4c65fde1af, from name: libaot-Microsoft.Extensions.DependencyModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.177, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 567
	%struct.DSOCacheEntry {
		i64 8879040545617680294, ; hash 0x7b38b05543d517a6, from name: libaot-Xamarin.AndroidX.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 568
	%struct.DSOCacheEntry {
		i64 8879340544350621822, ; hash 0x7b39c12e29be107e, from name: aot-Microsoft.Extensions.Configuration.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 569
	%struct.DSOCacheEntry {
		i64 8899520469458231205, ; hash 0x7b8172b71d601fa5, from name: aot-Microsoft.AspNetCore.Http
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.143, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 570
	%struct.DSOCacheEntry {
		i64 8905480720482125567, ; hash 0x7b969f88326d46ff, from name: aot-Microsoft.AspNetCore.Connections.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 571
	%struct.DSOCacheEntry {
		i64 8906503468682351602, ; hash 0x7b9a41b7519893f2, from name: aot-System.Threading.Channels
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 572
	%struct.DSOCacheEntry {
		i64 8934906610293113664, ; hash 0x7bff2a390fcf8340, from name: aot-Xamarin.AndroidX.ViewPager2
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.89, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 573
	%struct.DSOCacheEntry {
		i64 8941376889969657626, ; hash 0x7c1626e87187471a, from name: System.Xml.XDocument
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.181, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 574
	%struct.DSOCacheEntry {
		i64 8959200230209785136, ; hash 0x7c55792439408d30, from name: aot-Xamarin.AndroidX.Fragment.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.203, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 575
	%struct.DSOCacheEntry {
		i64 8967164847000689438, ; hash 0x7c71c4eb13d89b1e, from name: libaot-System.Private.Uri.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.202, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 576
	%struct.DSOCacheEntry {
		i64 9024223692735279012, ; hash 0x7d3c7ba2db266fa4, from name: System.Net.WebSockets.Client.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 577
	%struct.DSOCacheEntry {
		i64 9032777207089403703, ; hash 0x7d5adf031bcf1737, from name: libaot-System.ObjectModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 578
	%struct.DSOCacheEntry {
		i64 9048598243993758896, ; hash 0x7d9314295078acb0, from name: libaot-Microsoft.Extensions.Localization.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.187, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 579
	%struct.DSOCacheEntry {
		i64 9049979032622352945, ; hash 0x7d97fbfb38304a31, from name: libaot-System.IO.Compression
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 580
	%struct.DSOCacheEntry {
		i64 9055317871244365271, ; hash 0x7daaf3a073c44dd7, from name: monodroid
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.190, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 581
	%struct.DSOCacheEntry {
		i64 9071850823194088089, ; hash 0x7de5b0424bd19299, from name: libaot-System.Reflection.Emit.ILGeneration.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.78, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 582
	%struct.DSOCacheEntry {
		i64 9076657654528979776, ; hash 0x7df6c40bee07b340, from name: libaot-Microsoft.Extensions.FileProviders.Embedded
		i8 0, ; ignore
		i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 583
	%struct.DSOCacheEntry {
		i64 9088245146908530154, ; hash 0x7e1feecf3d2695ea, from name: aot-System.Security.Cryptography.Csp
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.148, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 584
	%struct.DSOCacheEntry {
		i64 9089904904477581872, ; hash 0x7e25d459a977a230, from name: aot-Xamarin.AndroidX.Collection.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 585
	%struct.DSOCacheEntry {
		i64 9091140080408862998, ; hash 0x7e2a37bc78162116, from name: aot-Microsoft.AspNetCore.Mvc.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.146, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 586
	%struct.DSOCacheEntry {
		i64 9098834300896121870, ; hash 0x7e458d96c70d940e, from name: libaot-System.Threading.Tasks.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.154, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 587
	%struct.DSOCacheEntry {
		i64 9104800902720461245, ; hash 0x7e5ac02e854f19bd, from name: aot-Microsoft.Extensions.Http.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 588
	%struct.DSOCacheEntry {
		i64 9137369390292547645, ; hash 0x7ece750c71ea383d, from name: aot-System.Reflection.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 589
	%struct.DSOCacheEntry {
		i64 9138683372487561558, ; hash 0x7ed3201bc3e3d156, from name: System.Security.Cryptography.Csp
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.148, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 590
	%struct.DSOCacheEntry {
		i64 9144762416336661257, ; hash 0x7ee8b8f77516eb09, from name: Microsoft.AspNetCore.Authentication.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__DSOCacheEntry_name.155, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 591
	%struct.DSOCacheEntry {
		i64 9178364210742283164, ; hash 0x7f60199ee073cb9c, from name: libaot-Syncfusion.Blazor.Schedule.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.197, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 592
	%struct.DSOCacheEntry {
		i64 9184990959724848206, ; hash 0x7f77a49d1b92e44e, from name: aot-Xamarin.AndroidX.AppCompat.AppCompatResources
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.192, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 593
	%struct.DSOCacheEntry {
		i64 9194364696164349201, ; hash 0x7f98f1fa3244b511, from name: aot-Microsoft.AspNetCore.Components.Forms
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.159, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 594
	%struct.DSOCacheEntry {
		i64 9202553973257348394, ; hash 0x7fb60a14da5d252a, from name: libaot-System.Net.Security.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.193, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 595
	%struct.DSOCacheEntry {
		i64 9203450558564540929, ; hash 0x7fb93985631c2201, from name: libaot-Microsoft.Maui.Controls.Compatibility
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 596
	%struct.DSOCacheEntry {
		i64 9219236770475081177, ; hash 0x7ff14eff4462fdd9, from name: aot-Xamarin.AndroidX.ViewPager
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 597
	%struct.DSOCacheEntry {
		i64 9225652551807385394, ; hash 0x80081a1dc3a7bf32, from name: libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.113, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 598
	%struct.DSOCacheEntry {
		i64 9279546441458671377, ; hash 0x80c79252c7e25f11, from name: System.Reactive.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.200, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 599
	%struct.DSOCacheEntry {
		i64 9293571162334492259, ; hash 0x80f965bb91c2f663, from name: libaot-System.Formats.Asn1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.179, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 600
	%struct.DSOCacheEntry {
		i64 9312692141327339315, ; hash 0x813d54296a634f33, from name: Xamarin.AndroidX.ViewPager2
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.89, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 601
	%struct.DSOCacheEntry {
		i64 9324707631942237306, ; hash 0x8168042fd44a7c7a, from name: Xamarin.AndroidX.AppCompat
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 602
	%struct.DSOCacheEntry {
		i64 9340393230298055228, ; hash 0x819fbe27ca61023c, from name: aot-Microsoft.AspNetCore.Components.WebView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.175, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 603
	%struct.DSOCacheEntry {
		i64 9347059587473533633, ; hash 0x81b76d2c05c4eac1, from name: Microsoft.AspNetCore.Routing.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.137, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 604
	%struct.DSOCacheEntry {
		i64 9347740879148000061, ; hash 0x81b9d8cd9a03a33d, from name: libaot-Microsoft.Extensions.FileProviders.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__DSOCacheEntry_name.135, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 605
	%struct.DSOCacheEntry {
		i64 9354788225964247547, ; hash 0x81d2e253e59b09fb, from name: aot-Microsoft.Maui.Graphics
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 606
	%struct.DSOCacheEntry {
		i64 9367092681395718278, ; hash 0x81fe992a2cc0c886, from name: libaot-System.Xml.XDocument.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.181, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 607
	%struct.DSOCacheEntry {
		i64 9370897661222023495, ; hash 0x820c1dc613ad7147, from name: libaot-System.Runtime.InteropServices.RuntimeInformation
		i8 0, ; ignore
		i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__DSOCacheEntry_name.116, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 608
	%struct.DSOCacheEntry {
		i64 9420813308886115598, ; hash 0x82bd73ca736de50e, from name: libaot-Microsoft.Extensions.DependencyModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.177, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 609
	%struct.DSOCacheEntry {
		i64 9481706966474323637, ; hash 0x8395ca3ff10c76b5, from name: Microsoft.Net.Http.Headers.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.80, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 610
	%struct.DSOCacheEntry {
		i64 9486299778194654718, ; hash 0x83a61b634028c5fe, from name: aot-Xamarin.AndroidX.Navigation.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 611
	%struct.DSOCacheEntry {
		i64 9508280561951847701, ; hash 0x83f432cb47e43515, from name: libaot-Syncfusion.Blazor.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 612
	%struct.DSOCacheEntry {
		i64 9513966453720563815, ; hash 0x840866151eff4067, from name: aot-Microsoft.AspNetCore.Components.WebView
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.175, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 613
	%struct.DSOCacheEntry {
		i64 9517094570775185992, ; hash 0x84138316a0da8a48, from name: Syncfusion.Blazor.Calendars.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.149, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 614
	%struct.DSOCacheEntry {
		i64 9519127451472829141, ; hash 0x841abbfb8cb51ad5, from name: Microsoft.Maui.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 615
	%struct.DSOCacheEntry {
		i64 9523258311667062251, ; hash 0x842968fa633395eb, from name: libaot-System.Linq.Queryable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.184, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 616
	%struct.DSOCacheEntry {
		i64 9553486869507636997, ; hash 0x8494cdb0f75c7f05, from name: aot-Syncfusion.Blazor.Lists
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.128, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 617
	%struct.DSOCacheEntry {
		i64 9564066322021869238, ; hash 0x84ba63a5b463e6b6, from name: aot-System.Reflection.Emit.Lightweight.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.142, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 618
	%struct.DSOCacheEntry {
		i64 9582184501894586191, ; hash 0x84fac2092fae1f4f, from name: libaot-Microsoft.DotNet.PlatformAbstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.97, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 619
	%struct.DSOCacheEntry {
		i64 9584802165301184279, ; hash 0x85040ec9712c0717, from name: System.Private.Uri.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.202, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 620
	%struct.DSOCacheEntry {
		i64 9603688831467135405, ; hash 0x8547281c14fc21ad, from name: libaot-Microsoft.AspNetCore.Authentication.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__DSOCacheEntry_name.155, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 621
	%struct.DSOCacheEntry {
		i64 9611905139377620684, ; hash 0x856458cc575ac6cc, from name: Microsoft.AspNetCore.Http.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.205, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 622
	%struct.DSOCacheEntry {
		i64 9627994993878674175, ; hash 0x859d826f8560aaff, from name: libaot-Microsoft.AspNetCore.Connections.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 623
	%struct.DSOCacheEntry {
		i64 9641796949223436837, ; hash 0x85ce8b3daae87225, from name: libaot-Java.Interop.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 624
	%struct.DSOCacheEntry {
		i64 9659729154652888475, ; hash 0x860e407c9991dd9b, from name: System.Text.RegularExpressions
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 625
	%struct.DSOCacheEntry {
		i64 9700644217508604131, ; hash 0x869f9c85050c28e3, from name: System.Numerics.Vectors.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.121, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 626
	%struct.DSOCacheEntry {
		i64 9706749945738275724, ; hash 0x86b54da5a745ab8c, from name: aot-Xamarin.Google.Crypto.Tink.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 627
	%struct.DSOCacheEntry {
		i64 9759984690706436077, ; hash 0x87726e5d96cecfed, from name: aot-System.Reactive.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.200, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 628
	%struct.DSOCacheEntry {
		i64 9783785228567974479, ; hash 0x87c6fcd42382124f, from name: libaot-System.Threading.Thread
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 629
	%struct.DSOCacheEntry {
		i64 9785861402587091236, ; hash 0x87ce5d191268d124, from name: aot-System.Linq.Queryable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.184, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 630
	%struct.DSOCacheEntry {
		i64 9803047054801588640, ; hash 0x880b6b5b89e351a0, from name: Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.157, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 631
	%struct.DSOCacheEntry {
		i64 9808040346124881443, ; hash 0x881d28bac5790e23, from name: aot-System.Runtime.Loader.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.173, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 632
	%struct.DSOCacheEntry {
		i64 9826454774730797097, ; hash 0x885e948e09453029, from name: aot-Microsoft.Extensions.Hosting.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 633
	%struct.DSOCacheEntry {
		i64 9828637902737371966, ; hash 0x886656192299f33e, from name: aot-Microsoft.Extensions.ObjectPool.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.147, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 634
	%struct.DSOCacheEntry {
		i64 9850959536771853286, ; hash 0x88b5a3818e086be6, from name: aot-System.IO.Pipelines
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 635
	%struct.DSOCacheEntry {
		i64 9872301298376226842, ; hash 0x890175b9a557b81a, from name: libaot-Microsoft.Extensions.Logging.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.206, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 636
	%struct.DSOCacheEntry {
		i64 9878540403917854255, ; hash 0x8917a0289ade162f, from name: Xamarin.Kotlin.StdLib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 637
	%struct.DSOCacheEntry {
		i64 9921778862272270480, ; hash 0x89b13d4eb1b7d090, from name: aot-System.Reflection.Emit.ILGeneration
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.78, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 638
	%struct.DSOCacheEntry {
		i64 9925952136629214562, ; hash 0x89c010e0d9505d62, from name: libaot-System.Globalization
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.207, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 639
	%struct.DSOCacheEntry {
		i64 9935234070679127486, ; hash 0x89e10abf873005be, from name: aot-Microsoft.Extensions.Localization.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.187, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 640
	%struct.DSOCacheEntry {
		i64 9938556199016768930, ; hash 0x89ecd834cea6a5a2, from name: Microsoft.AspNetCore.Routing
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.137, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 641
	%struct.DSOCacheEntry {
		i64 9941896055066979463, ; hash 0x89f8b5c9a41fec87, from name: aot-Xamarin.Google.Crypto.Tink.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 642
	%struct.DSOCacheEntry {
		i64 9956195530459977388, ; hash 0x8a2b8315b36616ac, from name: Microsoft.Maui
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 643
	%struct.DSOCacheEntry {
		i64 9986049736366568628, ; hash 0x8a959353ad8334b4, from name: libaot-Microsoft.IdentityModel.JsonWebTokens.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.208, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 644
	%struct.DSOCacheEntry {
		i64 9994634297922938278, ; hash 0x8ab412f0aba1e5a6, from name: libaot-Microsoft.AspNetCore.Authorization.Policy
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.126, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 645
	%struct.DSOCacheEntry {
		i64 10015320022696718808, ; hash 0x8afd907f48b1f1d8, from name: aot-Xamarin.Kotlin.StdLib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 646
	%struct.DSOCacheEntry {
		i64 10035180913033615400, ; hash 0x8b441fdf2a261828, from name: Microsoft.AspNetCore.Authentication.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.120, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 647
	%struct.DSOCacheEntry {
		i64 10036215306110403221, ; hash 0x8b47cca5920c8295, from name: System.Runtime.Serialization.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.118, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 648
	%struct.DSOCacheEntry {
		i64 10038591806013433352, ; hash 0x8b503e0f9293e608, from name: libaot-Microsoft.Extensions.Logging
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.206, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 649
	%struct.DSOCacheEntry {
		i64 10043659251706229531, ; hash 0x8b623ee03703f31b, from name: libaot-Microsoft.Extensions.Hosting.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 650
	%struct.DSOCacheEntry {
		i64 10051358222726253779, ; hash 0x8b7d990c97ccccd3, from name: System.Private.Xml
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.198, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 651
	%struct.DSOCacheEntry {
		i64 10078727084704864206, ; hash 0x8bded4e257f117ce, from name: System.Net.WebSockets.Client
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 652
	%struct.DSOCacheEntry {
		i64 10092835686693276772, ; hash 0x8c10f49539bd0c64, from name: Microsoft.Maui.Controls
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.132, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 653
	%struct.DSOCacheEntry {
		i64 10100633424984079765, ; hash 0x8c2ca895a69cfd95, from name: libaot-System.Runtime
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.114, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 654
	%struct.DSOCacheEntry {
		i64 10117538216423255955, ; hash 0x8c68b7671f58ef93, from name: System.Collections.Specialized.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.125, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 655
	%struct.DSOCacheEntry {
		i64 10125640814986396946, ; hash 0x8c8580ac5c760512, from name: aot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__DSOCacheEntry_name.180, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 656
	%struct.DSOCacheEntry {
		i64 10160995827489655378, ; hash 0x8d031bdeadbf4a52, from name: aot-Syncfusion.ExcelExport.Net
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 657
	%struct.DSOCacheEntry {
		i64 10195674054964728829, ; hash 0x8d7e4f88b3d6d3fd, from name: aot-System.Runtime.Serialization.Xml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.130, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 658
	%struct.DSOCacheEntry {
		i64 10197238052298302818, ; hash 0x8d83ddfb35562562, from name: aot-Syncfusion.Blazor.Buttons
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.85, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 659
	%struct.DSOCacheEntry {
		i64 10201058816038513574, ; hash 0x8d9170f216d7aba6, from name: Syncfusion.Blazor.Spinner
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.102, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 660
	%struct.DSOCacheEntry {
		i64 10202443004866537339, ; hash 0x8d965bdbaa3d277b, from name: aot-System.Security.Cryptography
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 661
	%struct.DSOCacheEntry {
		i64 10205933005510771811, ; hash 0x8da2c1fec2e78463, from name: aot-System.Diagnostics.Debug.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 662
	%struct.DSOCacheEntry {
		i64 10214437830394522368, ; hash 0x8dc0f9169cfa2b00, from name: aot-System.Reflection.Emit.Lightweight
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.142, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 663
	%struct.DSOCacheEntry {
		i64 10224492561641212282, ; hash 0x8de4b1d0293f897a, from name: aot-System.Private.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.164, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 664
	%struct.DSOCacheEntry {
		i64 10226498071391929720, ; hash 0x8debd1d049888578, from name: Microsoft.Extensions.Features
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.182, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 665
	%struct.DSOCacheEntry {
		i64 10229024438826829339, ; hash 0x8df4cb880b10061b, from name: Xamarin.AndroidX.CustomView
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.189, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 666
	%struct.DSOCacheEntry {
		i64 10243523786148452761, ; hash 0x8e284e9c69a49999, from name: Microsoft.AspNetCore.Http.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.165, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 667
	%struct.DSOCacheEntry {
		i64 10245369515835430794, ; hash 0x8e2edd4ad7fc978a, from name: System.Reflection.Emit.Lightweight
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.142, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 668
	%struct.DSOCacheEntry {
		i64 10246681702664239323, ; hash 0x8e3386b825cbf8db, from name: aot-Syncfusion.Blazor.Inputs
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.88, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 669
	%struct.DSOCacheEntry {
		i64 10273345953350871244, ; hash 0x8e9241b6cc2ce8cc, from name: netstandard.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 670
	%struct.DSOCacheEntry {
		i64 10291981562957691400, ; hash 0x8ed476b3c6f67a08, from name: aot-System.ComponentModel.TypeConverter
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.98, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 671
	%struct.DSOCacheEntry {
		i64 10318218263549127400, ; hash 0x8f31acd7a9cb2ae8, from name: aot-System.Formats.Asn1
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.179, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 672
	%struct.DSOCacheEntry {
		i64 10340237239855826389, ; hash 0x8f7fe6fc16df45d5, from name: libaot-System.Reflection.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.93, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 673
	%struct.DSOCacheEntry {
		i64 10344253246330260948, ; hash 0x8f8e2b8576324dd4, from name: 420BytesClient.App.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 674
	%struct.DSOCacheEntry {
		i64 10356807666685550219, ; hash 0x8fbac5b33bd59e8b, from name: libaot-System.Net.Http
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.194, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 675
	%struct.DSOCacheEntry {
		i64 10360651442923773544, ; hash 0x8fc86d98211c1e68, from name: System.Text.Encoding
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.186, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 676
	%struct.DSOCacheEntry {
		i64 10381335852814591098, ; hash 0x9011e9f4990a647a, from name: libaot-Syncfusion.Blazor.DropDowns
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.160, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 677
	%struct.DSOCacheEntry {
		i64 10385124814576326370, ; hash 0x901f5fff00ea96e2, from name: libaot-System.Private.Xml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.198, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 678
	%struct.DSOCacheEntry {
		i64 10386754220365410361, ; hash 0x902529ee9a2b7039, from name: aot-Microsoft.IdentityModel.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.152, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 679
	%struct.DSOCacheEntry {
		i64 10387475612650146223, ; hash 0x9027ba08d50b89af, from name: libaot-System.Runtime.Serialization.Formatters
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.127, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 680
	%struct.DSOCacheEntry {
		i64 10389350981949764913, ; hash 0x902e63ac45f8b531, from name: libaot-Syncfusion.Blazor.Calendars.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.149, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 681
	%struct.DSOCacheEntry {
		i64 10392419804969934685, ; hash 0x90394ac04ff79f5d, from name: libaot-System.Runtime.Loader
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.173, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 682
	%struct.DSOCacheEntry {
		i64 10393065047377582633, ; hash 0x903b959884781a29, from name: aot-Syncfusion.Blazor.Themes.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.174, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 683
	%struct.DSOCacheEntry {
		i64 10423296565563567828, ; hash 0x90a6fd005af72ed4, from name: aot-Microsoft.Net.Http.Headers
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.80, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 684
	%struct.DSOCacheEntry {
		i64 10424850697884505851, ; hash 0x90ac8279fbe396fb, from name: aot-Microsoft.AspNetCore.ResponseCaching.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__DSOCacheEntry_name.167, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 685
	%struct.DSOCacheEntry {
		i64 10430153318873392755, ; hash 0x90bf592ea44f6673, from name: Xamarin.AndroidX.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 686
	%struct.DSOCacheEntry {
		i64 10431089073467423858, ; hash 0x90c2ac3efc7bfc72, from name: libaot-System.Private.Xml
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.198, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 687
	%struct.DSOCacheEntry {
		i64 10445573484590211502, ; hash 0x90f621bdc03d21ae, from name: aot-Xamarin.AndroidX.Activity
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.169, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 688
	%struct.DSOCacheEntry {
		i64 10450970453325464374, ; hash 0x91094e4174914336, from name: aot-System.Runtime.Serialization.Formatters
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.127, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 689
	%struct.DSOCacheEntry {
		i64 10458986597687352396, ; hash 0x9125c8e581b9dc4c, from name: Microsoft.AspNetCore.Routing.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.204, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 690
	%struct.DSOCacheEntry {
		i64 10462325736163448418, ; hash 0x9131a5d344731662, from name: libaot-System.Text.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.195, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 691
	%struct.DSOCacheEntry {
		i64 10469210094865300319, ; hash 0x914a1b1cef613b5f, from name: aot-System.IO.FileSystem.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.166, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 692
	%struct.DSOCacheEntry {
		i64 10511235338927921626, ; hash 0x91df68d98f54d9da, from name: aot-Microsoft.AspNetCore.Http.Features.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.170, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 693
	%struct.DSOCacheEntry {
		i64 10512098364414578010, ; hash 0x91e279c456e54d5a, from name: libaot-Xamarin.AndroidX.CursorAdapter
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 694
	%struct.DSOCacheEntry {
		i64 10541103627382590331, ; hash 0x924985e662b88b7b, from name: libaot-Microsoft.AspNetCore.ResponseCaching.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__DSOCacheEntry_name.167, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 695
	%struct.DSOCacheEntry {
		i64 10554165527930635073, ; hash 0x9277eda118fa8341, from name: Microsoft.AspNetCore.Components.Web.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 696
	%struct.DSOCacheEntry {
		i64 10561557058910284153, ; hash 0x92923030035de979, from name: libaot-Microsoft.CSharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 697
	%struct.DSOCacheEntry {
		i64 10570179044842741419, ; hash 0x92b0d1d68c211eab, from name: aot-System.IdentityModel.Tokens.Jwt.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.111, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 698
	%struct.DSOCacheEntry {
		i64 10616279736318774185, ; hash 0x93549a2c37754ba9, from name: aot-System.IO
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 699
	%struct.DSOCacheEntry {
		i64 10638196514328206315, ; hash 0x93a2775dbf54dbeb, from name: aot-System.IO.FileSystem.Watcher
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.106, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 700
	%struct.DSOCacheEntry {
		i64 10645844162743366824, ; hash 0x93bda2dca67bf4a8, from name: aot-Microsoft.AspNetCore.WebUtilities
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 701
	%struct.DSOCacheEntry {
		i64 10657322552275964462, ; hash 0x93e66a65792b122e, from name: aot-System.Runtime.InteropServices
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.168, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 702
	%struct.DSOCacheEntry {
		i64 10659687455468847115, ; hash 0x93eed14367e8800b, from name: libaot-Microsoft.AspNetCore.SignalR.Client.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.153, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 703
	%struct.DSOCacheEntry {
		i64 10668507464432646754, ; hash 0x940e2703c51c7a62, from name: aot-Microsoft.AspNetCore.Components.WebView.Maui
		i8 0, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.191, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 704
	%struct.DSOCacheEntry {
		i64 10686502423950929984, ; hash 0x944e1555c6f23040, from name: libaot-netstandard
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 705
	%struct.DSOCacheEntry {
		i64 10738576877450676954, ; hash 0x950716c64dabcada, from name: aot-System.Security.Cryptography.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 706
	%struct.DSOCacheEntry {
		i64 10769655153368559797, ; hash 0x9575804d49fcf0b5, from name: libaot-Microsoft.Maui.Graphics.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 707
	%struct.DSOCacheEntry {
		i64 10785150219063592792, ; hash 0x95ac8cfb68830758, from name: System.Net.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 708
	%struct.DSOCacheEntry {
		i64 10802119357986192625, ; hash 0x95e8d652f2233cf1, from name: libaot-System.Threading.Tasks
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 709
	%struct.DSOCacheEntry {
		i64 10807209854353471891, ; hash 0x95faec1a7dd6f993, from name: Microsoft.AspNetCore.Mvc.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.131, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 710
	%struct.DSOCacheEntry {
		i64 10822644899632537592, ; hash 0x9631c23204ca5ff8, from name: System.Linq.Queryable
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.184, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 711
	%struct.DSOCacheEntry {
		i64 10827433220396269482, ; hash 0x9642c525d2fbbfaa, from name: aot-Xamarin.AndroidX.SavedState
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.91, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 712
	%struct.DSOCacheEntry {
		i64 10828441735335428004, ; hash 0x96465a6301aebfa4, from name: aot-System.Private.DataContractSerialization
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 713
	%struct.DSOCacheEntry {
		i64 10830027119148645788, ; hash 0x964bfc48f0b3bd9c, from name: libaot-Microsoft.Extensions.Features
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.182, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 714
	%struct.DSOCacheEntry {
		i64 10875100877845445953, ; hash 0x96ec1ea130843d41, from name: libaot-Microsoft.AspNetCore.Components.WebView.Maui.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.191, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 715
	%struct.DSOCacheEntry {
		i64 10876809818744046220, ; hash 0x96f230e6ffb8428c, from name: libaot-Syncfusion.Blazor.Inputs.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.88, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 716
	%struct.DSOCacheEntry {
		i64 10891427439346915915, ; hash 0x97261f8d03371a4b, from name: Xamarin.AndroidX.Navigation.UI.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.201, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 717
	%struct.DSOCacheEntry {
		i64 10939290142898603245, ; hash 0x97d02a6d166744ed, from name: MudBlazor.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.87, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 718
	%struct.DSOCacheEntry {
		i64 10959662263064203642, ; hash 0x98188ac2f032117a, from name: aot-Xamarin.AndroidX.Fragment
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.203, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 719
	%struct.DSOCacheEntry {
		i64 10963320747618469188, ; hash 0x98258a2240780544, from name: libaot-420BytesClient.App.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 720
	%struct.DSOCacheEntry {
		i64 10980007583825662638, ; hash 0x9860d2b9110612ae, from name: Microsoft.Extensions.Configuration.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 721
	%struct.DSOCacheEntry {
		i64 11000046579200060018, ; hash 0x98a8041541f86a72, from name: libaot-Microsoft.JSInterop
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 722
	%struct.DSOCacheEntry {
		i64 11002576679268595294, ; hash 0x98b1013215cd365e, from name: Microsoft.Extensions.Logging.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.209, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 723
	%struct.DSOCacheEntry {
		i64 11026023016938367015, ; hash 0x99044d83f9e46827, from name: libaot-Syncfusion.Blazor.Buttons.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.85, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 724
	%struct.DSOCacheEntry {
		i64 11030714024502449316, ; hash 0x9914f7f6496354a4, from name: libaot-Syncfusion.Blazor.DropDowns.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.160, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 725
	%struct.DSOCacheEntry {
		i64 11050168729868392624, ; hash 0x995a15e9dbef58b0, from name: Microsoft.AspNetCore.Http.Features
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.170, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 726
	%struct.DSOCacheEntry {
		i64 11058657390679514429, ; hash 0x99783e4e38335d3d, from name: aot-System.Net.NetworkInformation
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.122, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 727
	%struct.DSOCacheEntry {
		i64 11102850263618477984, ; hash 0x9a153f7d4554dfa0, from name: aot-Microsoft.AspNetCore.Components.Authorization
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 728
	%struct.DSOCacheEntry {
		i64 11116516824914593865, ; hash 0x9a45cd2788b00849, from name: libaot-System.IO.FileSystem.Watcher
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.106, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 729
	%struct.DSOCacheEntry {
		i64 11117789032719138129, ; hash 0x9a4a52387ef53d51, from name: libaot-System.Reflection
		i8 0, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.93, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 730
	%struct.DSOCacheEntry {
		i64 11155155660125070409, ; hash 0x9acf12f867f16449, from name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.209, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 731
	%struct.DSOCacheEntry {
		i64 11158564309551918097, ; hash 0x9adb2f1e7231ac11, from name: libaot-System.Threading.Channels.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 732
	%struct.DSOCacheEntry {
		i64 11161717862777282926, ; hash 0x9ae6634245f8e16e, from name: MatBlazor.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 733
	%struct.DSOCacheEntry {
		i64 11162124722117608902, ; hash 0x9ae7d54b986d05c6, from name: Xamarin.AndroidX.ViewPager
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 734
	%struct.DSOCacheEntry {
		i64 11164818937994912957, ; hash 0x9af167ab9cbda4bd, from name: System.Security.Cryptography.Native.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.81, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 735
	%struct.DSOCacheEntry {
		i64 11171214345979581187, ; hash 0x9b08204291dc5303, from name: libaot-System.Text.RegularExpressions
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 736
	%struct.DSOCacheEntry {
		i64 11175324742386364903, ; hash 0x9b16baa4cf92b1e7, from name: System.Threading.Tasks.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.154, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 737
	%struct.DSOCacheEntry {
		i64 11212038206026375799, ; hash 0x9b9929582e4f6277, from name: aot-System.Runtime.InteropServices.RuntimeInformation
		i8 0, ; ignore
		i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__DSOCacheEntry_name.116, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 738
	%struct.DSOCacheEntry {
		i64 11218356222449480316, ; hash 0x9baf9b8c02e4f27c, from name: Microsoft.AspNetCore.Components
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.82, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 739
	%struct.DSOCacheEntry {
		i64 11245267750673177240, ; hash 0x9c0f37707307da98, from name: aot-System.Numerics.Vectors.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.121, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 740
	%struct.DSOCacheEntry {
		i64 11263951250740447317, ; hash 0x9c5197fbcbb38855, from name: aot-Xamarin.AndroidX.Navigation.Runtime
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.99, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 741
	%struct.DSOCacheEntry {
		i64 11270596618290860596, ; hash 0x9c6933e8fff21234, from name: libaot-System.Net.Http.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.194, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 742
	%struct.DSOCacheEntry {
		i64 11277712621019035171, ; hash 0x9c827be07ec77623, from name: aot-System.Web.HttpUtility
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 743
	%struct.DSOCacheEntry {
		i64 11297620656358036086, ; hash 0x9cc936212d561276, from name: libaot-System.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.188, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 744
	%struct.DSOCacheEntry {
		i64 11297932830577273663, ; hash 0x9cca520ce6c82b3f, from name: Microsoft.AspNetCore.Components.WebView.Maui.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.191, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 745
	%struct.DSOCacheEntry {
		i64 11327873123841536301, ; hash 0x9d34b096a744f12d, from name: aot-netstandard.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 746
	%struct.DSOCacheEntry {
		i64 11329407233932627207, ; hash 0x9d3a23da7e4b8d07, from name: aot-System.IO.Compression.Brotli
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.139, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 747
	%struct.DSOCacheEntry {
		i64 11339684046580168751, ; hash 0x9d5ea68f6593382f, from name: aot-Microsoft.Maui.Controls.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.132, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 748
	%struct.DSOCacheEntry {
		i64 11340910727871153756, ; hash 0x9d630238642d465c, from name: Xamarin.AndroidX.CursorAdapter
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 749
	%struct.DSOCacheEntry {
		i64 11352045248519547303, ; hash 0x9d8a9102002b29a7, from name: aot-Microsoft.Maui.Controls.Compatibility.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 750
	%struct.DSOCacheEntry {
		i64 11369008813813839762, ; hash 0x9dc6d547d3a8b792, from name: aot-Xamarin.AndroidX.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 751
	%struct.DSOCacheEntry {
		i64 11388823696126815914, ; hash 0x9e0d3acfa130aeaa, from name: aot-Microsoft.AspNetCore.Http.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.165, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 752
	%struct.DSOCacheEntry {
		i64 11391399506422047453, ; hash 0x9e16617f32d8a2dd, from name: System.Globalization.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.207, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 753
	%struct.DSOCacheEntry {
		i64 11413153824783247973, ; hash 0x9e63aaef2518aa65, from name: aot-System.Net.NameResolution.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 754
	%struct.DSOCacheEntry {
		i64 11418345596566047934, ; hash 0x9e761cd2b5f70cbe, from name: System.Runtime.CompilerServices.Unsafe.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 755
	%struct.DSOCacheEntry {
		i64 11424680816240210298, ; hash 0x9e8c9eabfc37b17a, from name: Syncfusion.Blazor.Lists.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.128, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 756
	%struct.DSOCacheEntry {
		i64 11427651043692466812, ; hash 0x9e972c13f469527c, from name: System.Reflection.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 757
	%struct.DSOCacheEntry {
		i64 11432101114902388181, ; hash 0x9ea6fb64e61a9dd5, from name: System.AppContext
		i8 0, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.108, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 758
	%struct.DSOCacheEntry {
		i64 11437608939786898104, ; hash 0x9eba8cbb4fd48ab8, from name: aot-Microsoft.Extensions.Options.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.101, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 759
	%struct.DSOCacheEntry {
		i64 11459687736992758643, ; hash 0x9f08fd47e05a7b73, from name: libaot-System.Diagnostics.DiagnosticSource
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.105, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 760
	%struct.DSOCacheEntry {
		i64 11465353776621081442, ; hash 0x9f1d1e8387aed362, from name: aot-System.Collections.Concurrent
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.104, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 761
	%struct.DSOCacheEntry {
		i64 11485890710487134646, ; hash 0x9f6614bf0f8b71b6, from name: System.Runtime.InteropServices
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.168, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 762
	%struct.DSOCacheEntry {
		i64 11495032816624096970, ; hash 0x9f868f71845656ca, from name: aot-System.Collections.Specialized
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.125, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 763
	%struct.DSOCacheEntry {
		i64 11501523568478995397, ; hash 0x9f9d9ebf72f943c5, from name: libaot-System.Xml.ReaderWriter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.141, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 764
	%struct.DSOCacheEntry {
		i64 11521729796983092563, ; hash 0x9fe56834a335f553, from name: libmonodroid
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.190, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 765
	%struct.DSOCacheEntry {
		i64 11523855479184395502, ; hash 0x9fecf58097b98cee, from name: libaot-Microsoft.AspNetCore.Components.Web.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 766
	%struct.DSOCacheEntry {
		i64 11530571088791430846, ; hash 0xa004d1504ccd66be, from name: Microsoft.Extensions.Logging
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.206, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 767
	%struct.DSOCacheEntry {
		i64 11531048335771130113, ; hash 0xa006835e057f5901, from name: System.Linq.Queryable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.184, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 768
	%struct.DSOCacheEntry {
		i64 11532129836507303693, ; hash 0xa00a5afc88b38f0d, from name: libaot-Xamarin.AndroidX.Window.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.172, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 769
	%struct.DSOCacheEntry {
		i64 11532321288382930258, ; hash 0xa00b091c65bd5d52, from name: libaot-Microsoft.AspNetCore.Authorization
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.109, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 770
	%struct.DSOCacheEntry {
		i64 11543093801659331803, ; hash 0xa0314ea798eaf4db, from name: aot-System.Memory
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.112, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 771
	%struct.DSOCacheEntry {
		i64 11563360143362580484, ; hash 0xa0794ec8fb096004, from name: aot-Microsoft.AspNetCore.Routing.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.137, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 772
	%struct.DSOCacheEntry {
		i64 11574046385574630378, ; hash 0xa09f45dda211d3ea, from name: aot-System.Reactive.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.200, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 773
	%struct.DSOCacheEntry {
		i64 11575835489729696913, ; hash 0xa0a5a10be7b2d491, from name: System.IO.FileSystem.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.166, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 774
	%struct.DSOCacheEntry {
		i64 11581332126085780304, ; hash 0xa0b9283549299350, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.183, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 775
	%struct.DSOCacheEntry {
		i64 11597940890313164233, ; hash 0xa0f429ca8d1805c9, from name: netstandard
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 776
	%struct.DSOCacheEntry {
		i64 11622665325505776179, ; hash 0xa14c0088b6058a33, from name: libaot-System.Runtime.InteropServices
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.168, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 777
	%struct.DSOCacheEntry {
		i64 11637972874768420528, ; hash 0xa18262ab42340eb0, from name: aot-System.Diagnostics.DiagnosticSource.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.105, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 778
	%struct.DSOCacheEntry {
		i64 11678659343752180467, ; hash 0xa212eecc052532f3, from name: aot-Microsoft.Extensions.FileProviders.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__DSOCacheEntry_name.135, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 779
	%struct.DSOCacheEntry {
		i64 11743665907891708234, ; hash 0xa2f9e1ec30c0214a, from name: System.Threading.Tasks
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 780
	%struct.DSOCacheEntry {
		i64 11746913073638327883, ; hash 0xa3056b33e19ac64b, from name: libaot-Microsoft.AspNetCore.Metadata
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.136, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 781
	%struct.DSOCacheEntry {
		i64 11747011251535266582, ; hash 0xa305c47eb446c316, from name: aot-System.Globalization
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.207, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 782
	%struct.DSOCacheEntry {
		i64 11764213056097819061, ; hash 0xa342e171eeb919b5, from name: libaot-System.Collections.Specialized.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.125, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 783
	%struct.DSOCacheEntry {
		i64 11774386958472795079, ; hash 0xa367068e2bc353c7, from name: libaot-Microsoft.Extensions.Http
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 784
	%struct.DSOCacheEntry {
		i64 11775896168281936811, ; hash 0xa36c632c765413ab, from name: aot-System.Private.CoreLib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.144, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 785
	%struct.DSOCacheEntry {
		i64 11782443198922974530, ; hash 0xa383a5a9d2056542, from name: aot-System.Collections.NonGeneric
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.84, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 786
	%struct.DSOCacheEntry {
		i64 11799183892646765925, ; hash 0xa3bf1f3c50b8a565, from name: aot-System.Net.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 787
	%struct.DSOCacheEntry {
		i64 11822727113666714038, ; hash 0xa412c3ab9e7bd9b6, from name: libaot-Xamarin.AndroidX.ViewPager2.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.89, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 788
	%struct.DSOCacheEntry {
		i64 11823822138032515276, ; hash 0xa416a796d8d3e8cc, from name: aot-Microsoft.AspNetCore.Metadata.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.136, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 789
	%struct.DSOCacheEntry {
		i64 11848514669829470329, ; hash 0xa46e6150eb30b879, from name: libaot-Xamarin.AndroidX.Navigation.UI.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.201, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 790
	%struct.DSOCacheEntry {
		i64 11878431249347270648, ; hash 0xa4d8aa49623e57f8, from name: libaot-System.Text.Encoding.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 791
	%struct.DSOCacheEntry {
		i64 11883219293542498704, ; hash 0xa4e9acfccbab4190, from name: aot-System.Linq.Parallel
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 792
	%struct.DSOCacheEntry {
		i64 11896613629761995876, ; hash 0xa5194310b808c464, from name: System.Runtime.Loader.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.173, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 793
	%struct.DSOCacheEntry {
		i64 11905546682503808667, ; hash 0xa538ffa12378469b, from name: aot-System.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.133, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 794
	%struct.DSOCacheEntry {
		i64 11912807392173141590, ; hash 0xa552cb34d820ae56, from name: libaot-Microsoft.Extensions.FileProviders.Physical
		i8 0, ; ignore
		i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__DSOCacheEntry_name.79, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 795
	%struct.DSOCacheEntry {
		i64 11925868684967371445, ; hash 0xa58132620d6f62b5, from name: aot-System.Net.Sockets.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.138, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 796
	%struct.DSOCacheEntry {
		i64 11946511331825732781, ; hash 0xa5ca88c2cea6ccad, from name: libaot-Xamarin.AndroidX.Navigation.Fragment
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.119, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 797
	%struct.DSOCacheEntry {
		i64 11949219802464515130, ; hash 0xa5d42819c4f5f43a, from name: aot-System
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.124, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 798
	%struct.DSOCacheEntry {
		i64 12007162008743431559, ; hash 0xa6a2023af3b7cd87, from name: libaot-System.Globalization.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.207, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 799
	%struct.DSOCacheEntry {
		i64 12009284439097441554, ; hash 0xa6a98c91c7077d12, from name: aot-Microsoft.Extensions.FileSystemGlobbing.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.83, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 800
	%struct.DSOCacheEntry {
		i64 12024697411268499440, ; hash 0xa6e04e960237d7f0, from name: aot-System.Dynamic.Runtime.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.210, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 801
	%struct.DSOCacheEntry {
		i64 12025475895945156578, ; hash 0xa6e3129d18d557e2, from name: Xamarin.AndroidX.Loader.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.163, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 802
	%struct.DSOCacheEntry {
		i64 12027900312071044408, ; hash 0xa6ebaf9b76cdfd38, from name: aot-Syncfusion.Blazor.Inputs.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.88, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 803
	%struct.DSOCacheEntry {
		i64 12048689113179125827, ; hash 0xa7358ae968287843, from name: Microsoft.Extensions.FileProviders.Physical
		i8 0, ; ignore
		i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__DSOCacheEntry_name.79, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 804
	%struct.DSOCacheEntry {
		i64 12050631976567110376, ; hash 0xa73c71ef8a3efae8, from name: aot-System.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.188, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 805
	%struct.DSOCacheEntry {
		i64 12051765732457062039, ; hash 0xa7407914a7541e97, from name: aot-System.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.188, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 806
	%struct.DSOCacheEntry {
		i64 12052751833701477691, ; hash 0xa743f9ef3db6ed3b, from name: System.Net.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 807
	%struct.DSOCacheEntry {
		i64 12067524632832190663, ; hash 0xa77875b7923d28c7, from name: Microsoft.AspNetCore.SignalR.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.161, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 808
	%struct.DSOCacheEntry {
		i64 12102847907131387746, ; hash 0xa7f5f40c43256f62, from name: System.Buffers
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 809
	%struct.DSOCacheEntry {
		i64 12121500283676389884, ; hash 0xa83838491953f1fc, from name: libaot-Syncfusion.ExcelExport.Net.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 810
	%struct.DSOCacheEntry {
		i64 12144437892866162446, ; hash 0xa889b5eb6914bf0e, from name: libaot-Microsoft.AspNetCore.SignalR.Protocols.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 811
	%struct.DSOCacheEntry {
		i64 12145679461940342714, ; hash 0xa88e1f1ebcb62fba, from name: System.Text.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.195, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 812
	%struct.DSOCacheEntry {
		i64 12150136896468159945, ; hash 0xa89df522165a0dc9, from name: aot-Microsoft.AspNetCore.Mvc.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.146, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 813
	%struct.DSOCacheEntry {
		i64 12180051240024769032, ; hash 0xa9083c11f3bb8208, from name: Syncfusion.Blazor.DropDowns
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.160, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 814
	%struct.DSOCacheEntry {
		i64 12192045520349597797, ; hash 0xa932d8cdf5d49065, from name: libaot-Xamarin.AndroidX.SavedState.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.91, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 815
	%struct.DSOCacheEntry {
		i64 12196119803066310016, ; hash 0xa9415257d3dfdd80, from name: Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__DSOCacheEntry_name.180, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 816
	%struct.DSOCacheEntry {
		i64 12197017491135263251, ; hash 0xa94482c91e57f213, from name: aot-Microsoft.JSInterop
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 817
	%struct.DSOCacheEntry {
		i64 12231865030503243097, ; hash 0xa9c0507023ab1d59, from name: libaot-MatBlazor.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 818
	%struct.DSOCacheEntry {
		i64 12256167329605373774, ; hash 0xaa16a74014e04f4e, from name: aot-System.IO.FileSystem.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.158, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 819
	%struct.DSOCacheEntry {
		i64 12260498804188982841, ; hash 0xaa260ab418c92e39, from name: libaot-Microsoft.Extensions.FileProviders.Embedded.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 820
	%struct.DSOCacheEntry {
		i64 12273329533996186173, ; hash 0xaa53a02f2d273a3d, from name: libaot-System.Reflection.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 821
	%struct.DSOCacheEntry {
		i64 12277809257162177647, ; hash 0xaa638a7801277c6f, from name: aot-Microsoft.AspNetCore.Http.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.205, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 822
	%struct.DSOCacheEntry {
		i64 12278824155482493573, ; hash 0xaa6725836f051285, from name: libaot-System.Threading.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.115, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 823
	%struct.DSOCacheEntry {
		i64 12278928371408744993, ; hash 0xaa67844c1848b221, from name: System.Runtime.InteropServices.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.168, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 824
	%struct.DSOCacheEntry {
		i64 12290938384773503399, ; hash 0xaa922f573ca359a7, from name: aot-Microsoft.Maui.Graphics.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 825
	%struct.DSOCacheEntry {
		i64 12299321273609848463, ; hash 0xaaaff788a3eb868f, from name: libaot-System.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.133, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 826
	%struct.DSOCacheEntry {
		i64 12313367145828839434, ; hash 0xaae1de2e1c17f00a, from name: System.IO.Pipelines
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 827
	%struct.DSOCacheEntry {
		i64 12315876021774320129, ; hash 0xaaeac7fd4f9c0201, from name: Microsoft.Extensions.Configuration.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__DSOCacheEntry_name.90, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 828
	%struct.DSOCacheEntry {
		i64 12405317157449198374, ; hash 0xac288a3a7fd16b26, from name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 829
	%struct.DSOCacheEntry {
		i64 12435251182579033392, ; hash 0xac92e310d6612530, from name: libaot-System.Text.Encoding.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.186, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 830
	%struct.DSOCacheEntry {
		i64 12439275739440478309, ; hash 0xaca12f61007bf865, from name: Microsoft.IdentityModel.JsonWebTokens
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.208, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 831
	%struct.DSOCacheEntry {
		i64 12439793764729580087, ; hash 0xaca3068529d36a37, from name: libaot-System.ComponentModel.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 832
	%struct.DSOCacheEntry {
		i64 12445986941120587433, ; hash 0xacb9072e68a4a6a9, from name: aot-Microsoft.IdentityModel.Tokens
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.176, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 833
	%struct.DSOCacheEntry {
		i64 12453234617382276517, ; hash 0xacd2c6e789ab0da5, from name: libaot-System.Reflection.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 834
	%struct.DSOCacheEntry {
		i64 12456599198595667770, ; hash 0xacdebaf925b5d73a, from name: System.Resources.ResourceManager.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.103, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 835
	%struct.DSOCacheEntry {
		i64 12479103209920401597, ; hash 0xad2eae4096be10bd, from name: libaot-System.Net.NameResolution.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 836
	%struct.DSOCacheEntry {
		i64 12531980697337323275, ; hash 0xadea8a0c04d7df0b, from name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 837
	%struct.DSOCacheEntry {
		i64 12534510190170019230, ; hash 0xadf3869b7699159e, from name: libaot-Microsoft.AspNetCore.Authentication.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.120, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 838
	%struct.DSOCacheEntry {
		i64 12543236371704911191, ; hash 0xae128705ed3b1557, from name: libaot-Microsoft.AspNetCore.Components.Forms
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.159, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 839
	%struct.DSOCacheEntry {
		i64 12550732019250633519, ; hash 0xae2d28465e8e1b2f, from name: System.IO.Compression
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 840
	%struct.DSOCacheEntry {
		i64 12556856643548507433, ; hash 0xae42ea9696366d29, from name: aot-Microsoft.Extensions.FileProviders.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__DSOCacheEntry_name.135, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 841
	%struct.DSOCacheEntry {
		i64 12590519508742077906, ; hash 0xaeba82c928327dd2, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.183, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 842
	%struct.DSOCacheEntry {
		i64 12640299229025219482, ; hash 0xaf6b5d2d78b1339a, from name: aot-Microsoft.AspNetCore.SignalR.Client.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.86, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 843
	%struct.DSOCacheEntry {
		i64 12641786814388416540, ; hash 0xaf70a620edd6b01c, from name: aot-Syncfusion.Blazor.Spinner.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.102, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 844
	%struct.DSOCacheEntry {
		i64 12647771380421887149, ; hash 0xaf85e90f4a6604ad, from name: libaot-Microsoft.AspNetCore.Http.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.205, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 845
	%struct.DSOCacheEntry {
		i64 12648537676456605650, ; hash 0xaf88a2007d5737d2, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState
		i8 0, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.183, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 846
	%struct.DSOCacheEntry {
		i64 12674035147592014371, ; hash 0xafe337d11b099a23, from name: aot-Microsoft.Extensions.Logging.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.206, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 847
	%struct.DSOCacheEntry {
		i64 12674984561979589840, ; hash 0xafe6974dde5a84d0, from name: Xamarin.AndroidX.Activity.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.169, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 848
	%struct.DSOCacheEntry {
		i64 12675504801352667864, ; hash 0xafe87075896252d8, from name: libaot-Microsoft.Extensions.FileSystemGlobbing
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.83, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 849
	%struct.DSOCacheEntry {
		i64 12700543734426720211, ; hash 0xb041653c70d157d3, from name: Xamarin.AndroidX.Collection
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 850
	%struct.DSOCacheEntry {
		i64 12708238894395270091, ; hash 0xb05cbbf17d3ba3cb, from name: System.IO
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 851
	%struct.DSOCacheEntry {
		i64 12708922737231849740, ; hash 0xb05f29e50e96e90c, from name: System.Text.Encoding.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 852
	%struct.DSOCacheEntry {
		i64 12727750515385895548, ; hash 0xb0a20da8c35f0a7c, from name: libaot-Microsoft.Extensions.DependencyInjection
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.107, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 853
	%struct.DSOCacheEntry {
		i64 12739747815404616738, ; hash 0xb0ccad23d9403c22, from name: libaot-Xamarin.AndroidX.Security.SecurityCrypto
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.95, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 854
	%struct.DSOCacheEntry {
		i64 12753841065332862057, ; hash 0xb0febee04cf46c69, from name: Xamarin.AndroidX.Window
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.172, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 855
	%struct.DSOCacheEntry {
		i64 12777444096784526359, ; hash 0xb15299b54e40ec17, from name: aot-Syncfusion.Blazor.Schedule
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.197, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 856
	%struct.DSOCacheEntry {
		i64 12796487004414081929, ; hash 0xb1964121bf00fb89, from name: libaot-Microsoft.AspNetCore.Hosting.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 857
	%struct.DSOCacheEntry {
		i64 12806536160161670340, ; hash 0xb1b9f4c925a1a4c4, from name: aot-Microsoft.AspNetCore.Http.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.205, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 858
	%struct.DSOCacheEntry {
		i64 12831234510819085119, ; hash 0xb211b3ce071acb3f, from name: aot-Microsoft.AspNetCore.Components.Web.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.211, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 859
	%struct.DSOCacheEntry {
		i64 12842431879475601171, ; hash 0xb2397bc0944b9f13, from name: System.Security.Claims.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 860
	%struct.DSOCacheEntry {
		i64 12843321153144804894, ; hash 0xb23ca48abd74d61e, from name: Microsoft.Extensions.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 861
	%struct.DSOCacheEntry {
		i64 12865668086435300742, ; hash 0xb28c08f59a0e4586, from name: aot-Microsoft.AspNetCore.Components.WebView.Maui.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.191, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 862
	%struct.DSOCacheEntry {
		i64 12872620911514443596, ; hash 0xb2a4bc8457155f4c, from name: aot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.113, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 863
	%struct.DSOCacheEntry {
		i64 12875951528938057945, ; hash 0xb2b091b2238030d9, from name: Xamarin.AndroidX.DrawerLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 864
	%struct.DSOCacheEntry {
		i64 12895691319166646681, ; hash 0xb2f6b2ee34043999, from name: aot-System.Runtime.Serialization.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.118, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 865
	%struct.DSOCacheEntry {
		i64 12919583851017440525, ; hash 0xb34b950fc5c48d0d, from name: aot-Microsoft.AspNetCore.ResponseCaching.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__DSOCacheEntry_name.167, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 866
	%struct.DSOCacheEntry {
		i64 12937319369933575792, ; hash 0xb38a976c0eabd670, from name: aot-Xamarin.Google.Android.Material.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 867
	%struct.DSOCacheEntry {
		i64 12941098956319990056, ; hash 0xb39804ef96a1a128, from name: Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.192, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 868
	%struct.DSOCacheEntry {
		i64 12956265281585160918, ; hash 0xb3cde6a0dc9c22d6, from name: libaot-Microsoft.AspNetCore.Mvc.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.131, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 869
	%struct.DSOCacheEntry {
		i64 12996638905122625135, ; hash 0xb45d56399ddb166f, from name: System.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.124, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 870
	%struct.DSOCacheEntry {
		i64 13003699287675270979, ; hash 0xb4766b9b07e27743, from name: Microsoft.AspNetCore.Components.WebView.Maui
		i8 0, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.191, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 871
	%struct.DSOCacheEntry {
		i64 13006425725023322809, ; hash 0xb4801b49318482b9, from name: libaot-Xamarin.AndroidX.DrawerLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 872
	%struct.DSOCacheEntry {
		i64 13006447531111757675, ; hash 0xb4802f1e51ac376b, from name: aot-System.Security.Cryptography.Cng.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.171, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 873
	%struct.DSOCacheEntry {
		i64 13036115238357361522, ; hash 0xb4e995bdb158e372, from name: aot-Microsoft.AspNetCore.Components.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.82, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 874
	%struct.DSOCacheEntry {
		i64 13038585680601407536, ; hash 0xb4f25c9859bde030, from name: aot-Microsoft.IdentityModel.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.152, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 875
	%struct.DSOCacheEntry {
		i64 13057408680142590095, ; hash 0xb5353c037300508f, from name: libaot-System.Reflection.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 876
	%struct.DSOCacheEntry {
		i64 13068061340980117689, ; hash 0xb55b148d542280b9, from name: libaot-System.Security.Cryptography.Encoding
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.129, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 877
	%struct.DSOCacheEntry {
		i64 13073566528136159500, ; hash 0xb56ea37d98fe210c, from name: aot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.192, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 878
	%struct.DSOCacheEntry {
		i64 13087390844131920673, ; hash 0xb59fc0a1fd2ecb21, from name: aot-Microsoft.Extensions.Logging.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.209, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 879
	%struct.DSOCacheEntry {
		i64 13101809809254258831, ; hash 0xb5d2fa9aeb54188f, from name: aot-Xamarin.AndroidX.DrawerLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 880
	%struct.DSOCacheEntry {
		i64 13114936752209646297, ; hash 0xb6019d7d7f2bd2d9, from name: Xamarin.Google.Android.Material.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 881
	%struct.DSOCacheEntry {
		i64 13116315589229894972, ; hash 0xb606838901f75d3c, from name: aot-System.Net.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 882
	%struct.DSOCacheEntry {
		i64 13161955518152598171, ; hash 0xb6a8a8cf08fa629b, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState
		i8 0, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.183, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 883
	%struct.DSOCacheEntry {
		i64 13166780507886895166, ; hash 0xb6b9cd1c8022c03e, from name: libaot-System.Text.Encoding
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.186, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 884
	%struct.DSOCacheEntry {
		i64 13170671139892445304, ; hash 0xb6c79f9edac74078, from name: libaot-Syncfusion.Blazor.Lists.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.128, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 885
	%struct.DSOCacheEntry {
		i64 13195302980748307708, ; hash 0xb71f22263727ecfc, from name: Xamarin.AndroidX.Navigation.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 886
	%struct.DSOCacheEntry {
		i64 13218945160029580850, ; hash 0xb773209608eeae32, from name: aot-System.Globalization.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.207, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 887
	%struct.DSOCacheEntry {
		i64 13222957746497227746, ; hash 0xb78162031ff78be2, from name: libaot-Xamarin.AndroidX.Fragment.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.203, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 888
	%struct.DSOCacheEntry {
		i64 13267728692878497596, ; hash 0xb82070f36347d73c, from name: libaot-Microsoft.AspNetCore.Components.Web
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 889
	%struct.DSOCacheEntry {
		i64 13285640494417243250, ; hash 0xb86013a3ab48ec72, from name: libaot-Microsoft.Maui.Controls.Xaml
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.96, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 890
	%struct.DSOCacheEntry {
		i64 13295219713260136977, ; hash 0xb8821be35ba42a11, from name: Microsoft.AspNetCore.Http.Connections.Client
		i8 0, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 891
	%struct.DSOCacheEntry {
		i64 13304421857568447470, ; hash 0xb8a2cd308a4f5bee, from name: 420BytesClient.DT
		i8 0, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.156, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 892
	%struct.DSOCacheEntry {
		i64 13314286428381311703, ; hash 0xb8c5d8f6e978f2d7, from name: libaot-System.Console
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 893
	%struct.DSOCacheEntry {
		i64 13318321119559369966, ; hash 0xb8d42e7ea7eb44ee, from name: 420BytesClient.DT.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.156, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 894
	%struct.DSOCacheEntry {
		i64 13323148484643576660, ; hash 0xb8e554f52cf6db54, from name: libaot-Xamarin.AndroidX.Navigation.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 895
	%struct.DSOCacheEntry {
		i64 13352871532007464144, ; hash 0xb94eede96cbb1cd0, from name: libaot-Xamarin.AndroidX.Activity
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.169, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 896
	%struct.DSOCacheEntry {
		i64 13384594276806126840, ; hash 0xb9bfa19483c16cf8, from name: aot-Xamarin.AndroidX.ViewPager.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 897
	%struct.DSOCacheEntry {
		i64 13461764607910725817, ; hash 0xbad1cb966071c8b9, from name: libaot-Microsoft.AspNetCore.Http.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.143, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 898
	%struct.DSOCacheEntry {
		i64 13465488254036897740, ; hash 0xbadf06394d106fcc, from name: Xamarin.Kotlin.StdLib
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 899
	%struct.DSOCacheEntry {
		i64 13483581387200759472, ; hash 0xbb1f4dd5242b86b0, from name: aot-Microsoft.Maui.Controls.Xaml
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.96, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 900
	%struct.DSOCacheEntry {
		i64 13488491921086969402, ; hash 0xbb30bfefe81d763a, from name: aot-System.ComponentModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 901
	%struct.DSOCacheEntry {
		i64 13513196916672997428, ; hash 0xbb8884ffee32a834, from name: Microsoft.AspNetCore.Metadata.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.136, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 902
	%struct.DSOCacheEntry {
		i64 13536584953364656224, ; hash 0xbbdb9c4b9132b060, from name: aot-Syncfusion.Blazor.Popups
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.162, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 903
	%struct.DSOCacheEntry {
		i64 13543298794604804824, ; hash 0xbbf3767f8b653ad8, from name: libaot-Microsoft.Extensions.Localization.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.187, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 904
	%struct.DSOCacheEntry {
		i64 13546874730744599821, ; hash 0xbc002acb0ebf550d, from name: System.Threading.Thread.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 905
	%struct.DSOCacheEntry {
		i64 13578724849647908067, ; hash 0xbc71524ebe0874e3, from name: System.Dynamic.Runtime.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.210, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 906
	%struct.DSOCacheEntry {
		i64 13589927487757454067, ; hash 0xbc991f0c2f198af3, from name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 907
	%struct.DSOCacheEntry {
		i64 13610110361359404117, ; hash 0xbce0d343a2b0cc55, from name: aot-Microsoft.AspNetCore.Authorization.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.109, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 908
	%struct.DSOCacheEntry {
		i64 13618112415141049676, ; hash 0xbcfd4116f7d1b54c, from name: Microsoft.AspNetCore.Mvc.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.131, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 909
	%struct.DSOCacheEntry {
		i64 13620440420819333808, ; hash 0xbd058666074ef2b0, from name: aot-System.AppContext.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.108, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 910
	%struct.DSOCacheEntry {
		i64 13645414927747152253, ; hash 0xbd5e40948d2e797d, from name: Microsoft.AspNetCore.Http.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.143, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 911
	%struct.DSOCacheEntry {
		i64 13699603031714047885, ; hash 0xbe1ec45fad2e278d, from name: libaot-Xamarin.AndroidX.Loader
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.163, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 912
	%struct.DSOCacheEntry {
		i64 13699605749645803848, ; hash 0xbe1ec6d87e898148, from name: aot-Microsoft.AspNetCore.SignalR.Client.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.153, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 913
	%struct.DSOCacheEntry {
		i64 13704740962182195404, ; hash 0xbe31054b559d68cc, from name: Microsoft.Extensions.FileProviders.Composite.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.92, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 914
	%struct.DSOCacheEntry {
		i64 13713329104121190199, ; hash 0xbe4f8829f32b5737, from name: System.Dynamic.Runtime
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.210, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 915
	%struct.DSOCacheEntry {
		i64 13717233136797750441, ; hash 0xbe5d66dc640c14a9, from name: aot-System.Text.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.195, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 916
	%struct.DSOCacheEntry {
		i64 13736616802526035693, ; hash 0xbea24433c239feed, from name: System.IdentityModel.Tokens.Jwt.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.111, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 917
	%struct.DSOCacheEntry {
		i64 13739044888507636575, ; hash 0xbeaae48894a4db5f, from name: libaot-Newtonsoft.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 918
	%struct.DSOCacheEntry {
		i64 13741491663277549315, ; hash 0xbeb395dcb9a66703, from name: libaot-Microsoft.AspNetCore.Routing.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.137, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 919
	%struct.DSOCacheEntry {
		i64 13757055220050775219, ; hash 0xbeeae0d5aa8f4cb3, from name: libaot-Microsoft.Maui.Controls
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.132, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 920
	%struct.DSOCacheEntry {
		i64 13761955127882175294, ; hash 0xbefc49465c48533e, from name: System.Reflection.Emit.ILGeneration.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.78, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 921
	%struct.DSOCacheEntry {
		i64 13768113933372556022, ; hash 0xbf122aad01c702f6, from name: libaot-System.Security.Cryptography
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 922
	%struct.DSOCacheEntry {
		i64 13780240838949801592, ; hash 0xbf3d40083cef0e78, from name: System.Text.Encoding.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 923
	%struct.DSOCacheEntry {
		i64 13780366944765650242, ; hash 0xbf3db2b9894aa542, from name: aot-Syncfusion.Blazor.Schedule.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.197, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 924
	%struct.DSOCacheEntry {
		i64 13786269793005612187, ; hash 0xbf52ab557dcc2c9b, from name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.192, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 925
	%struct.DSOCacheEntry {
		i64 13807487031629930123, ; hash 0xbf9e0c4cd11d5e8b, from name: libaot-Xamarin.AndroidX.Fragment
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.203, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 926
	%struct.DSOCacheEntry {
		i64 13842731643823728203, ; hash 0xc01b43168f2c264b, from name: libaot-System.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.133, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 927
	%struct.DSOCacheEntry {
		i64 13857560230989874761, ; hash 0xc04ff19c0dbb4649, from name: aot-Syncfusion.Blazor.SplitButtons
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 928
	%struct.DSOCacheEntry {
		i64 13885975078585796489, ; hash 0xc0b4e4c34f088789, from name: libaot-System.Threading.ThreadPool.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.151, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 929
	%struct.DSOCacheEntry {
		i64 13888993854737701709, ; hash 0xc0bf9e52e7395b4d, from name: System.Formats.Asn1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.179, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 930
	%struct.DSOCacheEntry {
		i64 13895932895870473602, ; hash 0xc0d8455851065582, from name: libaot-Microsoft.Extensions.FileProviders.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__DSOCacheEntry_name.135, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 931
	%struct.DSOCacheEntry {
		i64 13900452450741477987, ; hash 0xc0e853db2fa76263, from name: Xamarin.AndroidX.ViewPager.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 932
	%struct.DSOCacheEntry {
		i64 13904753614831582715, ; hash 0xc0f79bbdfd5d7dfb, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.157, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 933
	%struct.DSOCacheEntry {
		i64 13917396180688427187, ; hash 0xc1248616bc4fd8b3, from name: Microsoft.Extensions.Logging.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.206, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 934
	%struct.DSOCacheEntry {
		i64 13918643515869505000, ; hash 0xc128f48896b225e8, from name: aot-Xamarin.AndroidX.CustomView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.189, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 935
	%struct.DSOCacheEntry {
		i64 13921917134693230900, ; hash 0xc13495df5dd06934, from name: Microsoft.AspNetCore.WebUtilities
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 936
	%struct.DSOCacheEntry {
		i64 13927427627500361954, ; hash 0xc14829a2f41ed8e2, from name: aot-System.Private.Uri.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.202, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 937
	%struct.DSOCacheEntry {
		i64 13933840135725088450, ; hash 0xc15ef1c75ef97ec2, from name: libaot-420BytesClient.App
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 938
	%struct.DSOCacheEntry {
		i64 13934622921725558032, ; hash 0xc161b9b7f077bd10, from name: aot-Xamarin.AndroidX.RecyclerView
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 939
	%struct.DSOCacheEntry {
		i64 13959074834287824816, ; hash 0xc1b8989a7ad20fb0, from name: Xamarin.AndroidX.Fragment
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.203, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 940
	%struct.DSOCacheEntry {
		i64 13963744846780922848, ; hash 0xc1c92ff47e917be0, from name: libaot-System.Buffers.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 941
	%struct.DSOCacheEntry {
		i64 13969275516293171133, ; hash 0xc1dcd611d63747bd, from name: aot-Microsoft.Extensions.DependencyModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.177, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 942
	%struct.DSOCacheEntry {
		i64 13970307180132182141, ; hash 0xc1e0805ccade287d, from name: Syncfusion.Licensing
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 943
	%struct.DSOCacheEntry {
		i64 13972136905349029688, ; hash 0xc1e7007ce4745f38, from name: libaot-System.Net.Sockets.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.138, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 944
	%struct.DSOCacheEntry {
		i64 14024723203617446143, ; hash 0xc2a1d37290cbd8ff, from name: libaot-System.ComponentModel.TypeConverter
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.98, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 945
	%struct.DSOCacheEntry {
		i64 14037761671920318323, ; hash 0xc2d025dd88677773, from name: aot-System.Threading
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.115, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 946
	%struct.DSOCacheEntry {
		i64 14044858527140495619, ; hash 0xc2e95c6ae6d34103, from name: aot-System.Runtime.Loader
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.173, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 947
	%struct.DSOCacheEntry {
		i64 14058709349301150578, ; hash 0xc31a91aabd8ee372, from name: System.IO.Compression.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 948
	%struct.DSOCacheEntry {
		i64 14059049780117520506, ; hash 0xc31bc7497770407a, from name: aot-System.Security.Cryptography.X509Certificates.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.140, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 949
	%struct.DSOCacheEntry {
		i64 14064151877224080280, ; hash 0xc32de79e0515a398, from name: aot-System.Formats.Asn1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.179, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 950
	%struct.DSOCacheEntry {
		i64 14065588402835835119, ; hash 0xc333022133e248ef, from name: Microsoft.Extensions.ObjectPool.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.147, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 951
	%struct.DSOCacheEntry {
		i64 14082136096249122791, ; hash 0xc36dcc2b4fa28fe7, from name: Microsoft.AspNetCore.Metadata
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.136, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 952
	%struct.DSOCacheEntry {
		i64 14085224268007237774, ; hash 0xc378c4d85448688e, from name: aot-System.ComponentModel.Annotations
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 953
	%struct.DSOCacheEntry {
		i64 14124974489674258913, ; hash 0xc405fd76067d19e1, from name: Xamarin.AndroidX.CardView
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 954
	%struct.DSOCacheEntry {
		i64 14143988164198918098, ; hash 0xc4498a4c1a67e7d2, from name: System.Threading.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.115, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 955
	%struct.DSOCacheEntry {
		i64 14152660198772281192, ; hash 0xc46859777ea18f68, from name: libaot-System.Collections.Concurrent.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.104, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 956
	%struct.DSOCacheEntry {
		i64 14159110086036678642, ; hash 0xc47f439ae5dde7f2, from name: aot-System.Text.Encoding.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 957
	%struct.DSOCacheEntry {
		i64 14174671189317472550, ; hash 0xc4b68c58973b5126, from name: libaot-System.Text.RegularExpressions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 958
	%struct.DSOCacheEntry {
		i64 14182888721008485466, ; hash 0xc4d3be25c89ae45a, from name: aot-System.Console
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 959
	%struct.DSOCacheEntry {
		i64 14192320605318602423, ; hash 0xc4f540657a78deb7, from name: libaot-Microsoft.IdentityModel.Tokens.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.176, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 960
	%struct.DSOCacheEntry {
		i64 14208955863919878019, ; hash 0xc5305a137225df83, from name: aot-System.Runtime.Serialization.Xml
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.130, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 961
	%struct.DSOCacheEntry {
		i64 14221573122063989430, ; hash 0xc55d2d67c7ddfab6, from name: libaot-Microsoft.AspNetCore.SignalR.Client.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.86, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 962
	%struct.DSOCacheEntry {
		i64 14230396410514008665, ; hash 0xc57c8623b5ae6a59, from name: aot-System.Collections
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 963
	%struct.DSOCacheEntry {
		i64 14261232074598307362, ; hash 0xc5ea130339d6d622, from name: Microsoft.AspNetCore.Mvc.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.146, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 964
	%struct.DSOCacheEntry {
		i64 14273777005244472372, ; hash 0xc616a48f80bc5c34, from name: aot-Syncfusion.Blazor.Data.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.199, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 965
	%struct.DSOCacheEntry {
		i64 14317997431913345095, ; hash 0xc6b3becde8267047, from name: aot-System.Collections.Specialized.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.125, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 966
	%struct.DSOCacheEntry {
		i64 14319327830875434373, ; hash 0xc6b878cb8db1ed85, from name: System.Text.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.195, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 967
	%struct.DSOCacheEntry {
		i64 14327709162229390963, ; hash 0xc6d63f9253cade73, from name: System.Security.Cryptography.X509Certificates
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.140, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 968
	%struct.DSOCacheEntry {
		i64 14339080265730885305, ; hash 0xc6fea587acb406b9, from name: libaot-System.Diagnostics.Debug
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 969
	%struct.DSOCacheEntry {
		i64 14343351667264400691, ; hash 0xc70dd258d7cd2d33, from name: libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 970
	%struct.DSOCacheEntry {
		i64 14343849879592858025, ; hash 0xc70f9777f0a971a9, from name: System.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.133, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 971
	%struct.DSOCacheEntry {
		i64 14351510784141839845, ; hash 0xc72acf0546f64de5, from name: aot-Java.Interop
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 972
	%struct.DSOCacheEntry {
		i64 14360875924539294536, ; hash 0xc74c1490f19fc348, from name: Xamarin.AndroidX.Lifecycle.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 973
	%struct.DSOCacheEntry {
		i64 14424844866220670826, ; hash 0xc82f57facf333f6a, from name: monosgen-2.0.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.196, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 974
	%struct.DSOCacheEntry {
		i64 14427179087989235449, ; hash 0xc837a2f12a8adef9, from name: aot-Microsoft.AspNetCore.Hosting.Server.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 975
	%struct.DSOCacheEntry {
		i64 14429843176364016121, ; hash 0xc84119ea93c581f9, from name: libaot-System.Runtime.CompilerServices.Unsafe
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 976
	%struct.DSOCacheEntry {
		i64 14433108888625154129, ; hash 0xc84cb41077090851, from name: aot-Microsoft.AspNetCore.SignalR.Protocols.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 977
	%struct.DSOCacheEntry {
		i64 14462803528705013993, ; hash 0xc8b6332ea0ba78e9, from name: aot-System.Threading.Tasks.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 978
	%struct.DSOCacheEntry {
		i64 14493845334980046552, ; hash 0xc9247b8a5cf02ed8, from name: libaot-Microsoft.IdentityModel.JsonWebTokens
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.208, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 979
	%struct.DSOCacheEntry {
		i64 14499218921891576442, ; hash 0xc93792ca0ff83a7a, from name: Microsoft.AspNetCore.Components.WebView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.175, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 980
	%struct.DSOCacheEntry {
		i64 14531858928011108053, ; hash 0xc9ab88b3b230ded5, from name: aot-System.Dynamic.Runtime
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.210, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 981
	%struct.DSOCacheEntry {
		i64 14562678984415238708, ; hash 0xca190761441dda34, from name: aot-Xamarin.AndroidX.SwipeRefreshLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.117, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 982
	%struct.DSOCacheEntry {
		i64 14588929277170587884, ; hash 0xca7649e1d30c98ec, from name: aot-System.Net.WebSockets.Client
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 983
	%struct.DSOCacheEntry {
		i64 14594817256724576660, ; hash 0xca8b34f7e4cf3994, from name: libaot-Microsoft.AspNetCore.SignalR.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.161, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 984
	%struct.DSOCacheEntry {
		i64 14604015534980822382, ; hash 0xcaabe2c0f0d1756e, from name: aot-System.Net.Http
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.194, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 985
	%struct.DSOCacheEntry {
		i64 14604329626201521481, ; hash 0xcaad006b00747d49, from name: Microsoft.AspNetCore.SignalR.Client
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.153, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 986
	%struct.DSOCacheEntry {
		i64 14611435504614518872, ; hash 0xcac63f2d3f143058, from name: System.Net.NetworkInformation.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.122, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 987
	%struct.DSOCacheEntry {
		i64 14622043554576106986, ; hash 0xcaebef2458cc85ea, from name: System.Runtime.Serialization.Formatters
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.127, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 988
	%struct.DSOCacheEntry {
		i64 14629556046954829322, ; hash 0xcb069fb6c869160a, from name: aot-Syncfusion.Blazor.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 989
	%struct.DSOCacheEntry {
		i64 14641910217497669834, ; hash 0xcb3283c4431c70ca, from name: aot-Microsoft.Extensions.ObjectPool
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.147, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 990
	%struct.DSOCacheEntry {
		i64 14685340429739860767, ; hash 0xcbcccf508853a31f, from name: Microsoft.JSInterop.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 991
	%struct.DSOCacheEntry {
		i64 14690985099581930927, ; hash 0xcbe0dd1ca5233daf, from name: System.Web.HttpUtility
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 992
	%struct.DSOCacheEntry {
		i64 14713405421650509891, ; hash 0xcc308446a9c90043, from name: libaot-System.Collections.NonGeneric.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.84, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 993
	%struct.DSOCacheEntry {
		i64 14726144688497773647, ; hash 0xcc5dc6925cea4c4f, from name: libaot-Xamarin.AndroidX.Loader.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.163, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 994
	%struct.DSOCacheEntry {
		i64 14749613074536373161, ; hash 0xccb126f1ca329ba9, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.157, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 995
	%struct.DSOCacheEntry {
		i64 14761658010069183920, ; hash 0xccdbf1bfe1f92db0, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.157, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 996
	%struct.DSOCacheEntry {
		i64 14771707560008029257, ; hash 0xccffa5c3103b1449, from name: aot-Microsoft.AspNetCore.Http.Connections.Client.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 997
	%struct.DSOCacheEntry {
		i64 14778913795158822752, ; hash 0xcd193fcb6e8fcf60, from name: Microsoft.AspNetCore.Components.Web.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.211, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 998
	%struct.DSOCacheEntry {
		i64 14783105725698854274, ; hash 0xcd2824555152cd82, from name: libaot-Microsoft.Maui.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 999
	%struct.DSOCacheEntry {
		i64 14797884060996115029, ; hash 0xcd5ca526a3169a55, from name: aot-System.Net.Requests
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.145, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1000
	%struct.DSOCacheEntry {
		i64 14809184851036126845, ; hash 0xcd84cb28db1abe7d, from name: Microsoft.AspNetCore.SignalR.Client.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.86, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1001
	%struct.DSOCacheEntry {
		i64 14832630590065248058, ; hash 0xcdd816ef5d6e873a, from name: System.Security.Claims
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1002
	%struct.DSOCacheEntry {
		i64 14848298015145851925, ; hash 0xce0fc06007e7fc15, from name: aot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.94, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1003
	%struct.DSOCacheEntry {
		i64 14852025521463078876, ; hash 0xce1cfe85b9d7afdc, from name: aot-Xamarin.AndroidX.Loader.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.163, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1004
	%struct.DSOCacheEntry {
		i64 14855385234536947279, ; hash 0xce28ee29e2285e4f, from name: aot-Syncfusion.Blazor.Themes
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.174, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1005
	%struct.DSOCacheEntry {
		i64 14868030760753516242, ; hash 0xce55db33e44b4ed2, from name: Xamarin.AndroidX.Security.SecurityCrypto.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.95, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1006
	%struct.DSOCacheEntry {
		i64 14929951904236909252, ; hash 0xcf31d82795b532c4, from name: aot-System.Numerics.Vectors
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.121, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1007
	%struct.DSOCacheEntry {
		i64 14937857240486681905, ; hash 0xcf4dee041cb49d31, from name: aot-Microsoft.Extensions.Configuration
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1008
	%struct.DSOCacheEntry {
		i64 14941060615656587977, ; hash 0xcf594f7803ca42c9, from name: libaot-System.Net.WebSockets
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1009
	%struct.DSOCacheEntry {
		i64 14944457164796803836, ; hash 0xcf65609cbcc13afc, from name: libaot-System.IO.FileSystem.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.158, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1010
	%struct.DSOCacheEntry {
		i64 14956178634283043352, ; hash 0xcf8f053a05ba4a18, from name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__DSOCacheEntry_name.90, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1011
	%struct.DSOCacheEntry {
		i64 14984936317414011727, ; hash 0xcff5302fe54ff34f, from name: System.Net.WebHeaderCollection
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.150, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1012
	%struct.DSOCacheEntry {
		i64 14986218813611173632, ; hash 0xcff9be9c4f91e700, from name: libaot-Xamarin.Google.Crypto.Tink.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1013
	%struct.DSOCacheEntry {
		i64 14991793843564863672, ; hash 0xd00d8d121f9260b8, from name: libaot-System.Security.Cryptography.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.123, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1014
	%struct.DSOCacheEntry {
		i64 15036676938210766038, ; hash 0xd0ad0201f05c6cd6, from name: Xamarin.AndroidX.Navigation.Fragment.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.119, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1015
	%struct.DSOCacheEntry {
		i64 15053928356398764554, ; hash 0xd0ea4c14bd54120a, from name: aot-Microsoft.CSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1016
	%struct.DSOCacheEntry {
		i64 15075885835942084736, ; hash 0xd1384e4ad5abc080, from name: libaot-Microsoft.AspNetCore.Http.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.165, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1017
	%struct.DSOCacheEntry {
		i64 15104180077898997103, ; hash 0xd19cd3c166b39d6f, from name: libaot-System.Net.WebSockets.Client
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1018
	%struct.DSOCacheEntry {
		i64 15138356091203993725, ; hash 0xd2163ea89395c07d, from name: Microsoft.IdentityModel.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.152, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1019
	%struct.DSOCacheEntry {
		i64 15140106800612261962, ; hash 0xd21c76eb5ff8404a, from name: libaot-System.IO.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1020
	%struct.DSOCacheEntry {
		i64 15142421214196732689, ; hash 0xd224afddc7891311, from name: aot-System.AppContext
		i8 0, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.108, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1021
	%struct.DSOCacheEntry {
		i64 15157085969304446191, ; hash 0xd258c9622672e4ef, from name: libaot-Microsoft.Extensions.ObjectPool.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.147, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1022
	%struct.DSOCacheEntry {
		i64 15169277521300507936, ; hash 0xd28419890c6f4d20, from name: aot-System.Threading.Thread.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1023
	%struct.DSOCacheEntry {
		i64 15199791680364902856, ; hash 0xd2f08200581679c8, from name: Syncfusion.Blazor.Buttons
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.85, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1024
	%struct.DSOCacheEntry {
		i64 15209665098310826992, ; hash 0xd31395d299793bf0, from name: libaot-System.Security.Cryptography.Csp
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.148, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1025
	%struct.DSOCacheEntry {
		i64 15212030046956336817, ; hash 0xd31bfcbb1d66b6b1, from name: libaot-System.Runtime.Loader.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.173, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1026
	%struct.DSOCacheEntry {
		i64 15214052068209397180, ; hash 0xd3232bbf9feb0dbc, from name: aot-Microsoft.Extensions.Localization
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.100, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1027
	%struct.DSOCacheEntry {
		i64 15225082071389566405, ; hash 0xd34a5b7a5d57f5c5, from name: aot-System.Resources.ResourceManager
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.103, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1028
	%struct.DSOCacheEntry {
		i64 15241652306130060418, ; hash 0xd3853a04c8e54482, from name: aot-System.Runtime.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1029
	%struct.DSOCacheEntry {
		i64 15269015291810301362, ; hash 0xd3e670825a5c45b2, from name: libaot-Syncfusion.Blazor.Buttons
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.85, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1030
	%struct.DSOCacheEntry {
		i64 15275473185398115273, ; hash 0xd3fd61eddfa8cbc9, from name: libaot-System.IO.FileSystem.Watcher.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.106, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1031
	%struct.DSOCacheEntry {
		i64 15287759098695794728, ; hash 0xd42907e6f9824028, from name: System.IO.Compression.Brotli.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.139, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1032
	%struct.DSOCacheEntry {
		i64 15361183609531804313, ; hash 0xd52de31b17b22a99, from name: System.Collections.Concurrent.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.104, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1033
	%struct.DSOCacheEntry {
		i64 15370028218478381000, ; hash 0xd54d4f3b162247c8, from name: Microsoft.Extensions.Localization.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.187, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1034
	%struct.DSOCacheEntry {
		i64 15371816955219117674, ; hash 0xd553aa13d029866a, from name: libaot-System.ComponentModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1035
	%struct.DSOCacheEntry {
		i64 15375751482996832586, ; hash 0xd561a48272b6394a, from name: libaot-Microsoft.AspNetCore.Hosting.Server.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1036
	%struct.DSOCacheEntry {
		i64 15376320025298028518, ; hash 0xd563a998849d47e6, from name: libaot-Microsoft.Extensions.FileProviders.Composite.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.92, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1037
	%struct.DSOCacheEntry {
		i64 15380401783038358320, ; hash 0xd57229eeccc93330, from name: aot-Xamarin.AndroidX.Security.SecurityCrypto.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.95, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1038
	%struct.DSOCacheEntry {
		i64 15385617065962309506, ; hash 0xd584b1347adf0782, from name: libaot-Xamarin.AndroidX.Navigation.UI
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.201, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1039
	%struct.DSOCacheEntry {
		i64 15391712275433856905, ; hash 0xd59a58c406411f89, from name: Microsoft.Extensions.DependencyInjection.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__DSOCacheEntry_name.180, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1040
	%struct.DSOCacheEntry {
		i64 15394198501530322172, ; hash 0xd5a32df9a590c4fc, from name: libaot-Mono.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1041
	%struct.DSOCacheEntry {
		i64 15422501938551467493, ; hash 0xd607bbcd1b222de5, from name: System.ComponentModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1042
	%struct.DSOCacheEntry {
		i64 15427448221306938193, ; hash 0xd6194e6b4dbb6351, from name: Microsoft.AspNetCore.Components.Web
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1043
	%struct.DSOCacheEntry {
		i64 15441728228412085485, ; hash 0xd64c0a028c9fd4ed, from name: libaot-System.Runtime.Numerics
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1044
	%struct.DSOCacheEntry {
		i64 15465553130743477305, ; hash 0xd6a0aea1e4e53439, from name: System.Net.NameResolution.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1045
	%struct.DSOCacheEntry {
		i64 15476609812571688208, ; hash 0xd6c7f6a03da90d10, from name: libaot-Microsoft.Extensions.Configuration
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1046
	%struct.DSOCacheEntry {
		i64 15481710163200268842, ; hash 0xd6da155e291b5a2a, from name: Microsoft.Extensions.FileProviders.Composite
		i8 0, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.92, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1047
	%struct.DSOCacheEntry {
		i64 15489493229072521270, ; hash 0xd6f5bc0665af9836, from name: aot-Xamarin.AndroidX.CursorAdapter
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1048
	%struct.DSOCacheEntry {
		i64 15503723175688157554, ; hash 0xd7284a1606e23972, from name: aot-System.Private.CoreLib
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.144, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1049
	%struct.DSOCacheEntry {
		i64 15527772828719725935, ; hash 0xd77dbb1e38cd3d6f, from name: System.Console
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1050
	%struct.DSOCacheEntry {
		i64 15557562860424774966, ; hash 0xd7e790fe7a6dc536, from name: System.Net.Sockets
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.138, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1051
	%struct.DSOCacheEntry {
		i64 15558326944329442161, ; hash 0xd7ea47eca0252371, from name: libaot-Microsoft.Extensions.Http.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1052
	%struct.DSOCacheEntry {
		i64 15565247197164990907, ; hash 0xd802dddb8c29f1bb, from name: Microsoft.AspNetCore.Http.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.205, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1053
	%struct.DSOCacheEntry {
		i64 15582737692548360875, ; hash 0xd841015ed86f6aab, from name: Xamarin.AndroidX.Lifecycle.ViewModelSavedState
		i8 0, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.183, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1054
	%struct.DSOCacheEntry {
		i64 15602862011767004647, ; hash 0xd88880550acf1de7, from name: aot-Xamarin.AndroidX.Lifecycle.LiveData.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.94, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1055
	%struct.DSOCacheEntry {
		i64 15606390988651929980, ; hash 0xd89509eb0074a17c, from name: libaot-Microsoft.AspNetCore.Authorization.Policy.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.126, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1056
	%struct.DSOCacheEntry {
		i64 15608235330776020714, ; hash 0xd89b97565d9b36ea, from name: aot-Syncfusion.Blazor.Popups.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.162, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1057
	%struct.DSOCacheEntry {
		i64 15617887668700861200, ; hash 0xd8bde2166ade5310, from name: aot-System.Net.Requests.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.145, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1058
	%struct.DSOCacheEntry {
		i64 15620595871140898079, ; hash 0xd8c7812eef49651f, from name: Microsoft.Extensions.DependencyModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.177, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1059
	%struct.DSOCacheEntry {
		i64 15637181376593849944, ; hash 0xd9026d9cd83aee58, from name: aot-System.Security.Claims
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1060
	%struct.DSOCacheEntry {
		i64 15655091495375764412, ; hash 0xd9420ec5541c7bbc, from name: libaot-Microsoft.AspNetCore.Components.Web.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.211, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1061
	%struct.DSOCacheEntry {
		i64 15659595283356337508, ; hash 0xd9520ef12ed64564, from name: aot-System.Net.Security
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.193, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1062
	%struct.DSOCacheEntry {
		i64 15665267377799294327, ; hash 0xd96635ae953ded77, from name: libaot-Microsoft.Extensions.FileProviders.Composite
		i8 0, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.92, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1063
	%struct.DSOCacheEntry {
		i64 15669608651595860026, ; hash 0xd975a20c27c2483a, from name: libaot-System.IO.Pipelines.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1064
	%struct.DSOCacheEntry {
		i64 15712039776084801819, ; hash 0xda0c60ee2e57b91b, from name: aot-Microsoft.Maui.Essentials.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.134, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1065
	%struct.DSOCacheEntry {
		i64 15734978453794313066, ; hash 0xda5ddf8946d5d36a, from name: aot-System.Security.Cryptography.X509Certificates
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.140, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1066
	%struct.DSOCacheEntry {
		i64 15735700225633954557, ; hash 0xda606ffbe0f22afd, from name: Microsoft.Extensions.Localization
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.100, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1067
	%struct.DSOCacheEntry {
		i64 15742342285542832975, ; hash 0xda7808e6f6643b4f, from name: libaot-System.ComponentModel.TypeConverter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.98, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1068
	%struct.DSOCacheEntry {
		i64 15743850336609555076, ; hash 0xda7d64777686d284, from name: aot-System.Security.Cryptography.Csp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.148, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1069
	%struct.DSOCacheEntry {
		i64 15755368083429170162, ; hash 0xdaa64fcbde529bf2, from name: System.IO.FileSystem.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.158, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1070
	%struct.DSOCacheEntry {
		i64 15772053070002072106, ; hash 0xdae196b408152a2a, from name: libaot-MatBlazor
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1071
	%struct.DSOCacheEntry {
		i64 15801103922446586191, ; hash 0xdb48cc4cb475d14f, from name: libaot-System.Runtime.Serialization.Xml
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.130, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1072
	%struct.DSOCacheEntry {
		i64 15836589410207770787, ; hash 0xdbc6de29a925a8a3, from name: libaot-Microsoft.AspNetCore.Http.Features.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.170, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1073
	%struct.DSOCacheEntry {
		i64 15847727014260307913, ; hash 0xdbee6fc12e58f7c9, from name: aot-Xamarin.AndroidX.SavedState.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.91, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1074
	%struct.DSOCacheEntry {
		i64 15861748605110642592, ; hash 0xdc204051342ae7a0, from name: Microsoft.AspNetCore.Http.Connections.Client.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1075
	%struct.DSOCacheEntry {
		i64 15862942918925224802, ; hash 0xdc247e8a0ed60b62, from name: libaot-System.Dynamic.Runtime.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.210, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1076
	%struct.DSOCacheEntry {
		i64 15869986477656553338, ; hash 0xdc3d849e5ef8b77a, from name: libaot-System.Collections.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1077
	%struct.DSOCacheEntry {
		i64 15908591910761673656, ; hash 0xdcc6ac0e359a33b8, from name: aot-Xamarin.KotlinX.Coroutines.Core.Jvm
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1078
	%struct.DSOCacheEntry {
		i64 15911237776946139920, ; hash 0xdcd01274efa69310, from name: aot-Microsoft.AspNetCore.Components.Web.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.211, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1079
	%struct.DSOCacheEntry {
		i64 15920910109220503623, ; hash 0xdcf26f6449038047, from name: System.Private.CoreLib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.144, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1080
	%struct.DSOCacheEntry {
		i64 15928521404965645318, ; hash 0xdd0d79d32c2eec06, from name: Microsoft.Maui.Controls.Compatibility
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1081
	%struct.DSOCacheEntry {
		i64 15937190497610202713, ; hash 0xdd2c465197c97e59, from name: System.Security.Cryptography.Cng
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.171, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1082
	%struct.DSOCacheEntry {
		i64 15941100832719536923, ; hash 0xdd3a2abf6eee831b, from name: Syncfusion.Blazor.Navigations
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1083
	%struct.DSOCacheEntry {
		i64 15958977808799221818, ; hash 0xdd79adc347d1c83a, from name: System.Net.Security.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.193, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1084
	%struct.DSOCacheEntry {
		i64 15963349826457351533, ; hash 0xdd893616f748b56d, from name: System.Threading.Tasks.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.154, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1085
	%struct.DSOCacheEntry {
		i64 15964641699753034279, ; hash 0xdd8dcd0aa82b0227, from name: libaot-Xamarin.AndroidX.SwipeRefreshLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.117, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1086
	%struct.DSOCacheEntry {
		i64 15966880053891205882, ; hash 0xdd95c0d017748afa, from name: libaot-System.Threading.Tasks.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.154, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1087
	%struct.DSOCacheEntry {
		i64 16004199028078918232, ; hash 0xde1a5638df4bba58, from name: System.Net.WebHeaderCollection.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.150, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1088
	%struct.DSOCacheEntry {
		i64 16011141387235236980, ; hash 0xde330042d2b61c74, from name: Syncfusion.ExcelExport.Net.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1089
	%struct.DSOCacheEntry {
		i64 16028674295501350649, ; hash 0xde714a5923cae6f9, from name: libaot-System.Runtime.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1090
	%struct.DSOCacheEntry {
		i64 16034513218355378781, ; hash 0xde8608d14e60ba5d, from name: libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.119, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1091
	%struct.DSOCacheEntry {
		i64 16046481083542319511, ; hash 0xdeb08d870f90b197, from name: Microsoft.Extensions.ObjectPool
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.147, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1092
	%struct.DSOCacheEntry {
		i64 16135553661385033838, ; hash 0xdfed0090b11bc86e, from name: libaot-Microsoft.AspNetCore.Authentication.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__DSOCacheEntry_name.155, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1093
	%struct.DSOCacheEntry {
		i64 16140149539819930312, ; hash 0xdffd547e06a6c2c8, from name: libaot-Xamarin.AndroidX.CoordinatorLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.113, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1094
	%struct.DSOCacheEntry {
		i64 16154507427712707110, ; hash 0xe03056ea4e39aa26, from name: System
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.124, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1095
	%struct.DSOCacheEntry {
		i64 16186580156264869966, ; hash 0xe0a248e4568df04e, from name: libaot-Microsoft.Extensions.Options
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.101, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1096
	%struct.DSOCacheEntry {
		i64 16199152789625618471, ; hash 0xe0cef3a2a7e9c027, from name: libaot-Microsoft.AspNetCore.Mvc.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.146, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1097
	%struct.DSOCacheEntry {
		i64 16208402292834325832, ; hash 0xe0efd00271045548, from name: libaot-Microsoft.Extensions.Hosting.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1098
	%struct.DSOCacheEntry {
		i64 16210911171323730879, ; hash 0xe0f8b9d23c299bbf, from name: libaot-System.Private.DataContractSerialization.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1099
	%struct.DSOCacheEntry {
		i64 16215129991522364183, ; hash 0xe107b6d0db792b17, from name: libaot-Xamarin.AndroidX.Activity.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.169, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1100
	%struct.DSOCacheEntry {
		i64 16219561732052121626, ; hash 0xe1177575db7c781a, from name: System.Net.Security
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.193, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1101
	%struct.DSOCacheEntry {
		i64 16244479869324760570, ; hash 0xe16ffc5fcc1615fa, from name: aot-System.Security.Cryptography.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.123, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1102
	%struct.DSOCacheEntry {
		i64 16253390427661688581, ; hash 0xe18fa47ad4825f05, from name: libaot-System.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.188, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1103
	%struct.DSOCacheEntry {
		i64 16254491453283163162, ; hash 0xe1938ddb5590dc1a, from name: Microsoft.Extensions.Logging.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.209, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1104
	%struct.DSOCacheEntry {
		i64 16259987176220345176, ; hash 0xe1a714300b054358, from name: aot-Microsoft.AspNetCore.WebUtilities.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1105
	%struct.DSOCacheEntry {
		i64 16273606707797624453, ; hash 0xe1d7771458b10685, from name: System.Native.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.178, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1106
	%struct.DSOCacheEntry {
		i64 16310745850103706381, ; hash 0xe25b68eec11bb30d, from name: Microsoft.Extensions.FileProviders.Embedded.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1107
	%struct.DSOCacheEntry {
		i64 16324688027152371119, ; hash 0xe28cf144cf7d4daf, from name: libaot-Microsoft.AspNetCore.Http.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.165, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1108
	%struct.DSOCacheEntry {
		i64 16329114974302298891, ; hash 0xe29cab8dc3cce30b, from name: aot-Microsoft.Extensions.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1109
	%struct.DSOCacheEntry {
		i64 16344871930018146979, ; hash 0xe2d4a66be7fc2aa3, from name: Microsoft.AspNetCore.ResponseCaching.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__DSOCacheEntry_name.167, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1110
	%struct.DSOCacheEntry {
		i64 16359895623217386732, ; hash 0xe30a0664105714ec, from name: libaot-System.Xml.XDocument
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.181, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1111
	%struct.DSOCacheEntry {
		i64 16370340268830916137, ; hash 0xe32f21bd9ff07e29, from name: System.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.188, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1112
	%struct.DSOCacheEntry {
		i64 16381697928620763692, ; hash 0xe3577b78dd316a2c, from name: aot-System.Xml.XDocument
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.181, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1113
	%struct.DSOCacheEntry {
		i64 16408164420095655262, ; hash 0xe3b5829b1c013d5e, from name: libaot-Syncfusion.Blazor.Data
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.199, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1114
	%struct.DSOCacheEntry {
		i64 16413721059704043258, ; hash 0xe3c940571601f6fa, from name: aot-System.Console.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1115
	%struct.DSOCacheEntry {
		i64 16443235086966797461, ; hash 0xe4321b310ce53495, from name: libaot-Syncfusion.Blazor.Themes
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.174, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1116
	%struct.DSOCacheEntry {
		i64 16454459195343277943, ; hash 0xe459fb756d988f77, from name: System.Net.NetworkInformation
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.122, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1117
	%struct.DSOCacheEntry {
		i64 16466626309819672754, ; hash 0xe485356285e728b2, from name: Syncfusion.Licensing.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1118
	%struct.DSOCacheEntry {
		i64 16477862173331498088, ; hash 0xe4ad2057db452468, from name: Xamarin.AndroidX.SavedState.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.91, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1119
	%struct.DSOCacheEntry {
		i64 16481900306254799575, ; hash 0xe4bb7900f1b822d7, from name: aot-Microsoft.Extensions.Logging.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.209, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1120
	%struct.DSOCacheEntry {
		i64 16527426519602866363, ; hash 0xe55d36da804ca8bb, from name: libaot-Microsoft.AspNetCore.Http.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.205, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1121
	%struct.DSOCacheEntry {
		i64 16530701436625763599, ; hash 0xe568d95f8a1e3d0f, from name: libaot-Microsoft.AspNetCore.Routing.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.204, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1122
	%struct.DSOCacheEntry {
		i64 16558262036769511634, ; hash 0xe5cac397cf7b98d2, from name: Microsoft.Extensions.Http
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1123
	%struct.DSOCacheEntry {
		i64 16596508800972828128, ; hash 0xe652a4d289a12de0, from name: libaot-Microsoft.AspNetCore.Components.Authorization.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1124
	%struct.DSOCacheEntry {
		i64 16605226748660468415, ; hash 0xe6719dbfe8b8cabf, from name: Microsoft.AspNetCore.SignalR.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.161, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1125
	%struct.DSOCacheEntry {
		i64 16649148416072044166, ; hash 0xe70da84600bb4e86, from name: Microsoft.Maui.Graphics
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1126
	%struct.DSOCacheEntry {
		i64 16677317093839702854, ; hash 0xe771bb8960dd8b46, from name: Xamarin.AndroidX.Navigation.UI
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.201, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1127
	%struct.DSOCacheEntry {
		i64 16680980346670206276, ; hash 0xe77ebf3ee48ccd44, from name: aot-System.IO.FileSystem.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.158, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1128
	%struct.DSOCacheEntry {
		i64 16717189724135467099, ; hash 0xe7ff637b8de7a85b, from name: libmonosgen-2.0.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.196, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1129
	%struct.DSOCacheEntry {
		i64 16727371319529025140, ; hash 0xe8238f96f695ae74, from name: libaot-Syncfusion.Blazor.Schedule
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.197, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1130
	%struct.DSOCacheEntry {
		i64 16730696072636839813, ; hash 0xe82f5f6f5e8ab785, from name: libaot-Xamarin.AndroidX.CursorAdapter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1131
	%struct.DSOCacheEntry {
		i64 16733100980842614628, ; hash 0xe837eaafb1dd4f64, from name: libaot-System.IO.Compression.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1132
	%struct.DSOCacheEntry {
		i64 16765175234154577062, ; hash 0xe8a9de0cbcf5bca6, from name: libaot-System.Security.Cryptography.Algorithms
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1133
	%struct.DSOCacheEntry {
		i64 16768067971893542065, ; hash 0xe8b424faba51bcb1, from name: libaot-Mono.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1134
	%struct.DSOCacheEntry {
		i64 16775115612869907881, ; hash 0xe8cd2ec5833855a9, from name: aot-Microsoft.AspNetCore.Authentication.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__DSOCacheEntry_name.155, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1135
	%struct.DSOCacheEntry {
		i64 16778162983708529344, ; hash 0xe8d80256d38e12c0, from name: libaot-Microsoft.Extensions.Options.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.101, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1136
	%struct.DSOCacheEntry {
		i64 16794607523202238486, ; hash 0xe9126e8f8a928816, from name: Syncfusion.Blazor.Popups
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.162, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1137
	%struct.DSOCacheEntry {
		i64 16804602679676381986, ; hash 0xe935f11a41b02b22, from name: monosgen-2.0
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.196, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1138
	%struct.DSOCacheEntry {
		i64 16809732514289822791, ; hash 0xe9482aa8f3942c47, from name: aot-Microsoft.AspNetCore.Authorization.Policy.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.126, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1139
	%struct.DSOCacheEntry {
		i64 16812641203226435415, ; hash 0xe9528018de685f57, from name: libaot-System.Private.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.164, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1140
	%struct.DSOCacheEntry {
		i64 16818814240165112060, ; hash 0xe9686e710852a8fc, from name: aot-System.Private.Xml
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.198, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1141
	%struct.DSOCacheEntry {
		i64 16831427098943474553, ; hash 0xe9953dc50f68cb79, from name: aot-Microsoft.Extensions.Logging
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.206, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1142
	%struct.DSOCacheEntry {
		i64 16836283848371485551, ; hash 0xe9a67ef527d43b6f, from name: System.Threading.Tasks.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1143
	%struct.DSOCacheEntry {
		i64 16856367207395709763, ; hash 0xe9edd8aa905d5343, from name: aot-Microsoft.AspNetCore.Metadata
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.136, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1144
	%struct.DSOCacheEntry {
		i64 16884995932413633731, ; hash 0xea538e57096e24c3, from name: aot-Syncfusion.Blazor.DropDowns.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.160, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1145
	%struct.DSOCacheEntry {
		i64 16924802110373038789, ; hash 0xeae0f9d912910ac5, from name: libaot-System.IO.Compression.Brotli.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.139, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1146
	%struct.DSOCacheEntry {
		i64 16926798323237543726, ; hash 0xeae8116499405f2e, from name: libaot-System.Formats.Asn1
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.179, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1147
	%struct.DSOCacheEntry {
		i64 16935491222131471435, ; hash 0xeb06f389d7e4744b, from name: Microsoft.IdentityModel.JsonWebTokens.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.208, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1148
	%struct.DSOCacheEntry {
		i64 16948040093346346617, ; hash 0xeb3388ab9afcb679, from name: System.ComponentModel.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1149
	%struct.DSOCacheEntry {
		i64 16967745026080341269, ; hash 0xeb798a33c6eb7d15, from name: aot-System.Threading.Tasks
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1150
	%struct.DSOCacheEntry {
		i64 16998075588627545693, ; hash 0xebe54bb02d623e5d, from name: Xamarin.AndroidX.Navigation.Fragment
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.119, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1151
	%struct.DSOCacheEntry {
		i64 17006494245921786209, ; hash 0xec03346992e48961, from name: libaot-System.Security.Cryptography.X509Certificates
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.140, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1152
	%struct.DSOCacheEntry {
		i64 17007042734716382934, ; hash 0xec05274292a86ed6, from name: libaot-Syncfusion.Blazor.Data.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.199, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1153
	%struct.DSOCacheEntry {
		i64 17008137082415910100, ; hash 0xec090a90408c8cd4, from name: System.Collections.NonGeneric
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.84, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1154
	%struct.DSOCacheEntry {
		i64 17014841704447729151, ; hash 0xec20dc61b71bddff, from name: MatBlazor
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1155
	%struct.DSOCacheEntry {
		i64 17045652650920483456, ; hash 0xec8e52c636cf9a80, from name: Microsoft.Extensions.Localization.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.100, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1156
	%struct.DSOCacheEntry {
		i64 17055547629728291761, ; hash 0xecb17a347fb5dbb1, from name: aot-System.Xml.ReaderWriter
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.141, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1157
	%struct.DSOCacheEntry {
		i64 17062143951396181894, ; hash 0xecc8e986518c9786, from name: System.ComponentModel.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1158
	%struct.DSOCacheEntry {
		i64 17070628900825419556, ; hash 0xece70e8a8e374f24, from name: libaot-Xamarin.AndroidX.Security.SecurityCrypto.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.95, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1159
	%struct.DSOCacheEntry {
		i64 17081334622843504151, ; hash 0xed0d1756b42b0617, from name: Syncfusion.Blazor.Schedule
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.197, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1160
	%struct.DSOCacheEntry {
		i64 17116924499910326646, ; hash 0xed8b8824b055f976, from name: Syncfusion.Blazor.Data
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.199, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1161
	%struct.DSOCacheEntry {
		i64 17118171214553292978, ; hash 0xed8ff6060fc420b2, from name: System.Threading.Channels
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1162
	%struct.DSOCacheEntry {
		i64 17136563603789795909, ; hash 0xedd14dcde2c75245, from name: libaot-Syncfusion.Blazor.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1163
	%struct.DSOCacheEntry {
		i64 17136618570653034468, ; hash 0xedd17fcbdb22e7e4, from name: System.IO.FileSystem.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.158, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1164
	%struct.DSOCacheEntry {
		i64 17137864900836977098, ; hash 0xedd5ed53b705e9ca, from name: Microsoft.IdentityModel.Tokens
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.176, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1165
	%struct.DSOCacheEntry {
		i64 17148377862812683994, ; hash 0xedfb46cf6b1f4eda, from name: libaot-Microsoft.AspNetCore.Mvc.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.131, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1166
	%struct.DSOCacheEntry {
		i64 17171158695853098468, ; hash 0xee4c35db702f05e4, from name: libaot-System.AppContext.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.108, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1167
	%struct.DSOCacheEntry {
		i64 17190839035643904991, ; hash 0xee9221059e7943df, from name: aot-Microsoft.IdentityModel.JsonWebTokens
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.208, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1168
	%struct.DSOCacheEntry {
		i64 17205988430934219272, ; hash 0xeec7f35113509a08, from name: Microsoft.Extensions.FileSystemGlobbing
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.83, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1169
	%struct.DSOCacheEntry {
		i64 17230721278011714856, ; hash 0xef1fd1b5c7a72d28, from name: System.Private.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.164, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1170
	%struct.DSOCacheEntry {
		i64 17252806954862991943, ; hash 0xef6e488422ff5a47, from name: libaot-Xamarin.AndroidX.Collection.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1171
	%struct.DSOCacheEntry {
		i64 17256957115227007312, ; hash 0xef7d0710a5416950, from name: libaot-Microsoft.AspNetCore.Components.Web.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.211, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1172
	%struct.DSOCacheEntry {
		i64 17274924396890751211, ; hash 0xefbcdc36666700eb, from name: libaot-Syncfusion.Blazor.Themes.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.174, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1173
	%struct.DSOCacheEntry {
		i64 17307240838015558791, ; hash 0xf02fabd8300d2487, from name: libaot-System.Net.NetworkInformation
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.122, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1174
	%struct.DSOCacheEntry {
		i64 17309541862275468045, ; hash 0xf037d89d25aecb0d, from name: Mono.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1175
	%struct.DSOCacheEntry {
		i64 17321896332601854532, ; hash 0xf063bcf06ce00a44, from name: System.Security.Cryptography.Csp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.148, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1176
	%struct.DSOCacheEntry {
		i64 17353272485882399419, ; hash 0xf0d3356263948abb, from name: Newtonsoft.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1177
	%struct.DSOCacheEntry {
		i64 17360349973592121190, ; hash 0xf0ec5a52686b9f66, from name: Xamarin.Google.Crypto.Tink.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1178
	%struct.DSOCacheEntry {
		i64 17373142994336577950, ; hash 0xf119cd81a97f799e, from name: aot-Microsoft.AspNetCore.Authentication.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__DSOCacheEntry_name.155, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1179
	%struct.DSOCacheEntry {
		i64 17402366034782696113, ; hash 0xf1819fb4fa8bb2b1, from name: System.Security.Cryptography.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.123, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1180
	%struct.DSOCacheEntry {
		i64 17404258022326120933, ; hash 0xf1885875a7fdb1e5, from name: libaot-System.Dynamic.Runtime
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.210, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1181
	%struct.DSOCacheEntry {
		i64 17418605164135923268, ; hash 0xf1bb511beb1b3e44, from name: aot-Syncfusion.Blazor.Calendars
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.149, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1182
	%struct.DSOCacheEntry {
		i64 17451386204284126469, ; hash 0xf22fc74a98820505, from name: aot-Xamarin.AndroidX.Navigation.UI
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.201, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1183
	%struct.DSOCacheEntry {
		i64 17474527379847198219, ; hash 0xf281fe1165a1360b, from name: libaot-System
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.124, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1184
	%struct.DSOCacheEntry {
		i64 17498194101394783970, ; hash 0xf2d612d36878bee2, from name: Microsoft.AspNetCore.Http.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.165, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1185
	%struct.DSOCacheEntry {
		i64 17501557440705411739, ; hash 0xf2e205c3dd573a9b, from name: libaot-System.Net.Requests.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.145, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1186
	%struct.DSOCacheEntry {
		i64 17577202782581072989, ; hash 0xf3eec4cd80c0a45d, from name: System.IO.Compression.Native
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.185, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1187
	%struct.DSOCacheEntry {
		i64 17585881415428540016, ; hash 0xf40d99f92cc30670, from name: aot-Microsoft.IdentityModel.JsonWebTokens.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.208, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1188
	%struct.DSOCacheEntry {
		i64 17590177698408822511, ; hash 0xf41cdd6b81a7f6ef, from name: aot-Microsoft.AspNetCore.SignalR.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.161, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1189
	%struct.DSOCacheEntry {
		i64 17597203912231902700, ; hash 0xf435d3b964b25dec, from name: aot-Microsoft.AspNetCore.Routing.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.204, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1190
	%struct.DSOCacheEntry {
		i64 17617105468778885934, ; hash 0xf47c88159d28332e, from name: Syncfusion.Blazor.SplitButtons.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1191
	%struct.DSOCacheEntry {
		i64 17621652644066257425, ; hash 0xf48cafb75ce46a11, from name: libaot-System.Threading
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.115, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1192
	%struct.DSOCacheEntry {
		i64 17623318455445168472, ; hash 0xf4929ac34c652158, from name: libaot-System.Linq.Expressions
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1193
	%struct.DSOCacheEntry {
		i64 17627500474728259406, ; hash 0xf4a176498a351f4e, from name: System.Globalization
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.207, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1194
	%struct.DSOCacheEntry {
		i64 17636563193350668017, ; hash 0xf4c1a8c826653ef1, from name: Microsoft.AspNetCore.Http.Connections.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1195
	%struct.DSOCacheEntry {
		i64 17636815607399259337, ; hash 0xf4c28e59e0191cc9, from name: Microsoft.DotNet.PlatformAbstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.97, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1196
	%struct.DSOCacheEntry {
		i64 17704177640604968747, ; hash 0xf5b1dfc36cac272b, from name: Xamarin.AndroidX.Loader
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.163, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1197
	%struct.DSOCacheEntry {
		i64 17704486015523680799, ; hash 0xf5b2f83a8e28f21f, from name: aot-420BytesClient.DT.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.156, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1198
	%struct.DSOCacheEntry {
		i64 17710060891934109755, ; hash 0xf5c6c68c9e45303b, from name: Xamarin.AndroidX.Lifecycle.ViewModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.157, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1199
	%struct.DSOCacheEntry {
		i64 17713627739162850078, ; hash 0xf5d37293f44eb31e, from name: aot-Microsoft.AspNetCore.Authentication.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.120, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1200
	%struct.DSOCacheEntry {
		i64 17722386417116025289, ; hash 0xf5f2908c946891c9, from name: libaot-System.Reactive.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.200, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1201
	%struct.DSOCacheEntry {
		i64 17725651416025760223, ; hash 0xf5fe2a0c609d81df, from name: aot-System.Reflection.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1202
	%struct.DSOCacheEntry {
		i64 17729255244101106781, ; hash 0xf60af7b5fce0bc5d, from name: aot-System.Net.WebHeaderCollection
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.150, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1203
	%struct.DSOCacheEntry {
		i64 17743242089888636773, ; hash 0xf63ca8ac4b925f65, from name: aot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1204
	%struct.DSOCacheEntry {
		i64 17775101500844812175, ; hash 0xf6add8a3745e278f, from name: aot-System.Net.WebSockets.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1205
	%struct.DSOCacheEntry {
		i64 17790600151040787804, ; hash 0xf6e4e89427cc055c, from name: Microsoft.IdentityModel.Logging
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1206
	%struct.DSOCacheEntry {
		i64 17798155118191535816, ; hash 0xf6ffbfc8051b66c8, from name: Java.Interop.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1207
	%struct.DSOCacheEntry {
		i64 17829284701206657227, ; hash 0xf76e57f8debab8cb, from name: System.IO.Pipelines.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1208
	%struct.DSOCacheEntry {
		i64 17879238731150526076, ; hash 0xf81fd0e5d0a2067c, from name: aot-Microsoft.Extensions.DependencyModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.177, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1209
	%struct.DSOCacheEntry {
		i64 17902061051722335752, ; hash 0xf870e5ad67440608, from name: aot-System.Net.WebHeaderCollection.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.150, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1210
	%struct.DSOCacheEntry {
		i64 17911643751311784505, ; hash 0xf892f1178448ba39, from name: Microsoft.Net.Http.Headers
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.80, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1211
	%struct.DSOCacheEntry {
		i64 17935984482491575587, ; hash 0xf8e96adb9fd42d23, from name: aot-System.Threading.Thread
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1212
	%struct.DSOCacheEntry {
		i64 17936373173282875089, ; hash 0xf8eacc5ec05f26d1, from name: libaot-System.Runtime.Numerics.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1213
	%struct.DSOCacheEntry {
		i64 17951544395489082718, ; hash 0xf920b2842ec7fd5e, from name: libaot-Microsoft.AspNetCore.Authorization.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.109, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1214
	%struct.DSOCacheEntry {
		i64 17966837238658391933, ; hash 0xf9570746b37e5f7d, from name: libaot-System.Collections.NonGeneric
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.84, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1215
	%struct.DSOCacheEntry {
		i64 17998629010973654570, ; hash 0xf9c7f9b9831ffe2a, from name: libaot-Microsoft.AspNetCore.SignalR.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.161, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1216
	%struct.DSOCacheEntry {
		i64 18005890127712955362, ; hash 0xf9e1c5abff0b2be2, from name: libaot-Microsoft.AspNetCore.Routing.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.204, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1217
	%struct.DSOCacheEntry {
		i64 18025913125965088385, ; hash 0xfa28e87b91334681, from name: System.Threading
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.115, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1218
	%struct.DSOCacheEntry {
		i64 18031606409160984977, ; hash 0xfa3d227e5bb28991, from name: Microsoft.AspNetCore.Components.Web.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.211, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1219
	%struct.DSOCacheEntry {
		i64 18035209221645796007, ; hash 0xfa49ef3b820c02a7, from name: System.Security.Cryptography.X509Certificates.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.140, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1220
	%struct.DSOCacheEntry {
		i64 18040554133168495475, ; hash 0xfa5cec66b2b69b73, from name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__DSOCacheEntry_name.180, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1221
	%struct.DSOCacheEntry {
		i64 18042235568190301429, ; hash 0xfa62e5a84be6a4f5, from name: System.Threading.ThreadPool.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.151, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1222
	%struct.DSOCacheEntry {
		i64 18047428238759735039, ; hash 0xfa75585d20a0aeff, from name: libaot-Microsoft.Extensions.Logging.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.209, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1223
	%struct.DSOCacheEntry {
		i64 18051112112354944973, ; hash 0xfa826ed3c9aae7cd, from name: aot-System.Resources.ResourceManager.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.103, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1224
	%struct.DSOCacheEntry {
		i64 18057033459698909374, ; hash 0xfa977842e6b240be, from name: libaot-System.Web.HttpUtility
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1225
	%struct.DSOCacheEntry {
		i64 18066658939550349411, ; hash 0xfab9aa959208b863, from name: libaot-Microsoft.Extensions.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1226
	%struct.DSOCacheEntry {
		i64 18070085765543834358, ; hash 0xfac5d743ac1532f6, from name: libaot-Microsoft.IdentityModel.Tokens
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.176, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1227
	%struct.DSOCacheEntry {
		i64 18078848640603812512, ; hash 0xfae4f90d833e72a0, from name: Microsoft.Maui.Controls.Compatibility.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1228
	%struct.DSOCacheEntry {
		i64 18082797315173193490, ; hash 0xfaf30059f4491712, from name: libaot-MudBlazor.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.87, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1229
	%struct.DSOCacheEntry {
		i64 18086360900563295465, ; hash 0xfaffa969d596dce9, from name: aot-System.ObjectModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1230
	%struct.DSOCacheEntry {
		i64 18092523641047199861, ; hash 0xfb158e64aaf9b075, from name: libaot-Syncfusion.Licensing.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1231
	%struct.DSOCacheEntry {
		i64 18096026207707417514, ; hash 0xfb21fff5848f4baa, from name: MudBlazor
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.87, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1232
	%struct.DSOCacheEntry {
		i64 18110926243295630228, ; hash 0xfb56ef7664ef9394, from name: aot-Syncfusion.Blazor.Lists.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.128, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1233
	%struct.DSOCacheEntry {
		i64 18121036031235206392, ; hash 0xfb7ada42d3d42cf8, from name: Xamarin.AndroidX.Navigation.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1234
	%struct.DSOCacheEntry {
		i64 18122114450755693480, ; hash 0xfb7eaf13f0442ba8, from name: libaot-System.Buffers
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1235
	%struct.DSOCacheEntry {
		i64 18143465790455919687, ; hash 0xfbca8a021a93b447, from name: aot-Syncfusion.Blazor.Calendars.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.149, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1236
	%struct.DSOCacheEntry {
		i64 18145848498878603418, ; hash 0xfbd30111a3b6e09a, from name: libSystem.IO.Compression.Native
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.185, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1237
	%struct.DSOCacheEntry {
		i64 18154224754674806230, ; hash 0xfbf0c33aaafeadd6, from name: aot-Microsoft.AspNetCore.Authentication.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.120, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1238
	%struct.DSOCacheEntry {
		i64 18226465753896977720, ; hash 0xfcf16a0903da0538, from name: libaot-System.Private.Uri
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.202, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1239
	%struct.DSOCacheEntry {
		i64 18252036729645089111, ; hash 0xfd4c42b3c1e0c157, from name: libaot-Xamarin.AndroidX.CustomView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.189, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1240
	%struct.DSOCacheEntry {
		i64 18253685954460439423, ; hash 0xfd521ea9d526d37f, from name: aot-Xamarin.AndroidX.CardView
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1241
	%struct.DSOCacheEntry {
		i64 18257096356770733190, ; hash 0xfd5e3c67ff65dc86, from name: libSystem.Security.Cryptography.Native.Android.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.81, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1242
	%struct.DSOCacheEntry {
		i64 18278807071731653235, ; hash 0xfdab5e2fbc769a73, from name: aot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.99, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1243
	%struct.DSOCacheEntry {
		i64 18292328407895211277, ; hash 0xfddb67c523617d0d, from name: aot-System.IO.Compression.Brotli.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.139, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1244
	%struct.DSOCacheEntry {
		i64 18301561429120935168, ; hash 0xfdfc352769be6500, from name: libaot-System.Security.Cryptography.Cng
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.171, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1245
	%struct.DSOCacheEntry {
		i64 18309516218928916979, ; hash 0xfe1877fe3e82e9f3, from name: libaot-System.Security.Cryptography.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1246
	%struct.DSOCacheEntry {
		i64 18327710550568384473, ; hash 0xfe591ba430ceb7d9, from name: libaot-Java.Interop
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1247
	%struct.DSOCacheEntry {
		i64 18347920244245135731, ; hash 0xfea0e8402d6e0173, from name: aot-System.Runtime.InteropServices.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.168, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1248
	%struct.DSOCacheEntry {
		i64 18350561708207496498, ; hash 0xfeaa4aa5ee97dd32, from name: System.Diagnostics.Debug.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1249
	%struct.DSOCacheEntry {
		i64 18377348929170574574, ; hash 0xff09757bd49e0cee, from name: aot-System.Private.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.164, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1250
	%struct.DSOCacheEntry {
		i64 18385158873532443393, ; hash 0xff2534963405ab01, from name: libaot-Microsoft.IdentityModel.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.152, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1251
	%struct.DSOCacheEntry {
		i64 18400295460575378824, ; hash 0xff5afb3b81d3fd88, from name: aot-Microsoft.Extensions.DependencyInjection.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.107, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1252
	%struct.DSOCacheEntry {
		i64 18418229140929285389, ; hash 0xff9ab1d1d8d68d0d, from name: aot-Microsoft.Extensions.Hosting.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1253
	%struct.DSOCacheEntry {
		i64 18418455310670382225, ; hash 0xff9b7f8517ea4491, from name: Microsoft.AspNetCore.Routing.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.204, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1254
	%struct.DSOCacheEntry {
		i64 18429503703191461742, ; hash 0xffc2bff96f791f6e, from name: aot-System.Threading.Tasks.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.154, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1255
	%struct.DSOCacheEntry {
		i64 18441817052021859583, ; hash 0xffee7ee65e8124ff, from name: Microsoft.Extensions.DependencyInjection.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.107, i32 0, i32 0), ; name
		i8* null; handle
	}
], align 16; end of 'dso_cache' array


; Bundled assembly name buffers, all 0 bytes long
@bundled_assemblies = local_unnamed_addr global [0 x %struct.XamarinAndroidBundledAssembly] zeroinitializer, align 8


; Assembly store individual assembly data
@assembly_store_bundled_assemblies = local_unnamed_addr global [206 x %struct.AssemblyStoreSingleAssemblyRuntimeData] zeroinitializer, align 16

; Assembly store data
@assembly_stores = local_unnamed_addr global [2 x %struct.AssemblyStoreRuntimeData] zeroinitializer, align 16

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/release/7.0.2xx @ a7e0eff127904fe24804423572ac38864346d200"}
