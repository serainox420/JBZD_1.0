.class public final Lcom/google/android/gms/drive/Drive;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/Drive$zzb;,
        Lcom/google/android/gms/drive/Drive$zza;
    }
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final DriveApi:Lcom/google/android/gms/drive/DriveApi;

.field public static final DrivePreferencesApi:Lcom/google/android/gms/drive/DrivePreferencesApi;

.field public static final SCOPE_APPFOLDER:Lcom/google/android/gms/common/api/Scope;

.field public static final SCOPE_FILE:Lcom/google/android/gms/common/api/Scope;

.field public static final zzaKL:Lcom/google/android/gms/common/api/Scope;

.field public static final zzaKM:Lcom/google/android/gms/common/api/Scope;

.field public static final zzaKN:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/drive/Drive$zzb;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzaKO:Lcom/google/android/gms/drive/zzg;

.field public static final zzaKP:Lcom/google/android/gms/drive/zzi;

.field public static final zzaid:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf",
            "<",
            "Lcom/google/android/gms/internal/zzahx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/Drive;->zzaid:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/drive.file"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/Drive;->SCOPE_FILE:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/drive.appdata"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/Drive;->SCOPE_APPFOLDER:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/drive"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/Drive;->zzaKL:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/drive.apps"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/Drive;->zzaKM:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "Drive.API"

    new-instance v2, Lcom/google/android/gms/drive/Drive$1;

    invoke-direct {v2}, Lcom/google/android/gms/drive/Drive$1;-><init>()V

    sget-object v3, Lcom/google/android/gms/drive/Drive;->zzaid:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/drive/Drive;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "Drive.INTERNAL_API"

    new-instance v2, Lcom/google/android/gms/drive/Drive$2;

    invoke-direct {v2}, Lcom/google/android/gms/drive/Drive$2;-><init>()V

    sget-object v3, Lcom/google/android/gms/drive/Drive;->zzaid:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/drive/Drive;->zzaKN:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzahv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzahv;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/Drive;->DriveApi:Lcom/google/android/gms/drive/DriveApi;

    new-instance v0, Lcom/google/android/gms/internal/zzaia;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaia;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/Drive;->zzaKO:Lcom/google/android/gms/drive/zzg;

    new-instance v0, Lcom/google/android/gms/internal/zzaif;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaif;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/Drive;->zzaKP:Lcom/google/android/gms/drive/zzi;

    new-instance v0, Lcom/google/android/gms/internal/zzaid;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaid;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/Drive;->DrivePreferencesApi:Lcom/google/android/gms/drive/DrivePreferencesApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
