.class public final Lcom/google/android/gms/internal/zzadh;
.super Ljava/lang/Object;


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

.field public static final zzaIB:Lcom/google/android/gms/internal/zzadi;

.field public static final zzaid:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf",
            "<",
            "Lcom/google/android/gms/internal/zzadp;",
            ">;"
        }
    .end annotation
.end field

.field static final zzaie:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/internal/zzadp;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzadh;->zzaid:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/internal/zzadh$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzadh$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzadh;->zzaie:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "Config.API"

    sget-object v2, Lcom/google/android/gms/internal/zzadh;->zzaie:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/internal/zzadh;->zzaid:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/internal/zzadh;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzadn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzadn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzadh;->zzaIB:Lcom/google/android/gms/internal/zzadi;

    return-void
.end method
