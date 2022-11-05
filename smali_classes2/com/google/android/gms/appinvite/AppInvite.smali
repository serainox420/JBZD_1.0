.class public final Lcom/google/android/gms/appinvite/AppInvite;
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

.field public static final AppInviteApi:Lcom/google/android/gms/appinvite/AppInviteApi;

.field public static final zzaid:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf",
            "<",
            "Lcom/google/android/gms/internal/zzun;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzaie:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/internal/zzun;",
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

    sput-object v0, Lcom/google/android/gms/appinvite/AppInvite;->zzaid:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/appinvite/AppInvite$1;

    invoke-direct {v0}, Lcom/google/android/gms/appinvite/AppInvite$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/appinvite/AppInvite;->zzaie:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "AppInvite.API"

    sget-object v2, Lcom/google/android/gms/appinvite/AppInvite;->zzaie:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/appinvite/AppInvite;->zzaid:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/appinvite/AppInvite;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzum;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzum;-><init>()V

    sput-object v0, Lcom/google/android/gms/appinvite/AppInvite;->AppInviteApi:Lcom/google/android/gms/appinvite/AppInviteApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
