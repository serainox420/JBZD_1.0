.class public final Lcom/google/android/gms/internal/zzaef;
.super Ljava/lang/Object;


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/awareness/AwarenessOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final FenceApi:Lcom/google/android/gms/awareness/FenceApi;

.field public static final SnapshotApi:Lcom/google/android/gms/awareness/SnapshotApi;

.field public static final zzaid:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf",
            "<",
            "Lcom/google/android/gms/internal/zzafn;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzaie:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/internal/zzafn;",
            "Lcom/google/android/gms/awareness/AwarenessOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaef;->zzaid:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/internal/zzaek;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaek;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaef;->FenceApi:Lcom/google/android/gms/awareness/FenceApi;

    new-instance v0, Lcom/google/android/gms/internal/zzwl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzwl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaef;->SnapshotApi:Lcom/google/android/gms/awareness/SnapshotApi;

    new-instance v0, Lcom/google/android/gms/internal/zzaef$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaef$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaef;->zzaie:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "ContextManager.API"

    sget-object v2, Lcom/google/android/gms/internal/zzaef;->zzaie:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/internal/zzaef;->zzaid:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/internal/zzaef;->API:Lcom/google/android/gms/common/api/Api;

    return-void
.end method
