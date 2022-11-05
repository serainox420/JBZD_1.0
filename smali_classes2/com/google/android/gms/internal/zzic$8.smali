.class final Lcom/google/android/gms/internal/zzic$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzid;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzqw;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqw;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzqw;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v2

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/zzpo;->zza(Landroid/view/View;Landroid/view/WindowManager;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "locationReady"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/zzqw;->zza(Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "GET LOCATION COMPILED"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    return-void
.end method
