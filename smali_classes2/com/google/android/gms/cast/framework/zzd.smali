.class public Lcom/google/android/gms/cast/framework/zzd;
.super Ljava/lang/Object;


# static fields
.field private static final zzapV:Lcom/google/android/gms/internal/zzyz;


# instance fields
.field private final zzaqu:Lcom/google/android/gms/cast/framework/zzj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzyz;

    const-string v1, "DiscoveryManager"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzyz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/framework/zzd;->zzapV:Lcom/google/android/gms/internal/zzyz;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/cast/framework/zzj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/zzd;->zzaqu:Lcom/google/android/gms/cast/framework/zzj;

    return-void
.end method


# virtual methods
.method public zzsE()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzd;->zzaqu:Lcom/google/android/gms/cast/framework/zzj;

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/zzj;->zzsJ()Lcom/google/android/gms/dynamic/IObjectWrapper;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/cast/framework/zzd;->zzapV:Lcom/google/android/gms/internal/zzyz;

    const-string v2, "Unable to call %s on %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "getWrappedThis"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lcom/google/android/gms/cast/framework/zzj;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
