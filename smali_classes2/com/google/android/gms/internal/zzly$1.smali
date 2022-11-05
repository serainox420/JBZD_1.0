.class Lcom/google/android/gms/internal/zzly$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzly;->zze(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzqm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzQX:Lorg/json/JSONObject;

.field final synthetic zzQY:Lcom/google/android/gms/internal/zzqj;

.field final synthetic zzQZ:Lcom/google/android/gms/internal/zzly;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzly;Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzqj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzly$1;->zzQZ:Lcom/google/android/gms/internal/zzly;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzly$1;->zzQX:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzly$1;->zzQY:Lcom/google/android/gms/internal/zzqj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzly$1;->zzQZ:Lcom/google/android/gms/internal/zzly;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzly;->zzjj()Lcom/google/android/gms/internal/zzqw;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzly$1;->zzQZ:Lcom/google/android/gms/internal/zzly;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzly;->zza(Lcom/google/android/gms/internal/zzly;)Lcom/google/android/gms/ads/internal/zzs;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzs;->zzc(Lcom/google/android/gms/internal/zzqw;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqw;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzly$1;->zzQZ:Lcom/google/android/gms/internal/zzly;

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/zzly;->zza(Lcom/google/android/gms/internal/zzly;Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzly$1;->zzQZ:Lcom/google/android/gms/internal/zzly;

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/zzly;->zzb(Lcom/google/android/gms/internal/zzly;Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzqx;->zza(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzly$1;->zzQZ:Lcom/google/android/gms/internal/zzly;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzly;->zza(Lcom/google/android/gms/internal/zzly;Lcom/google/android/gms/internal/zzqw;)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqw;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zzly$1$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/zzly$1$1;-><init>(Lcom/google/android/gms/internal/zzly$1;Lcom/google/android/gms/internal/zzqw;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzqx;->zza(Lcom/google/android/gms/internal/zzqx$zzb;)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqw;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zzly$1$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzly$1$2;-><init>(Lcom/google/android/gms/internal/zzly$1;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzqx;->zza(Lcom/google/android/gms/internal/zzqx$zza;)V

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzEl:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzqw;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Exception occurred while getting video view"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzly$1;->zzQY:Lcom/google/android/gms/internal/zzqj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqj;->zzh(Ljava/lang/Object;)V

    goto :goto_0
.end method
