.class public final Lcom/google/android/gms/cast/CastRemoteDisplay;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions;,
        Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionResult;,
        Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;,
        Lcom/google/android/gms/cast/CastRemoteDisplay$Configuration;
    }
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONFIGURATION_INTERACTIVE_NONREALTIME:I = 0x2

.field public static final CONFIGURATION_INTERACTIVE_REALTIME:I = 0x1

.field public static final CONFIGURATION_NONINTERACTIVE:I = 0x3

.field public static final CastRemoteDisplayApi:Lcom/google/android/gms/cast/CastRemoteDisplayApi;

.field private static final zzaie:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/internal/zzzg;",
            "Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/cast/CastRemoteDisplay$1;

    invoke-direct {v0}, Lcom/google/android/gms/cast/CastRemoteDisplay$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/CastRemoteDisplay;->zzaie:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "CastRemoteDisplay.API"

    sget-object v2, Lcom/google/android/gms/cast/CastRemoteDisplay;->zzaie:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/internal/zzyy;->zzawz:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/cast/CastRemoteDisplay;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzzf;

    sget-object v1, Lcom/google/android/gms/cast/CastRemoteDisplay;->API:Lcom/google/android/gms/common/api/Api;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzzf;-><init>(Lcom/google/android/gms/common/api/Api;)V

    sput-object v0, Lcom/google/android/gms/cast/CastRemoteDisplay;->CastRemoteDisplayApi:Lcom/google/android/gms/cast/CastRemoteDisplayApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isRemoteDisplaySdkSupported(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/zzyu;->initialize(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/internal/zzyu;->zzawx:Lcom/google/android/gms/internal/zzaqa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqa;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
