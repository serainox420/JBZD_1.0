.class Lcom/google/android/gms/internal/zzhb$zza$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzid;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzhb$zza;->zzh(Lcom/google/android/gms/internal/zzjj;)Lcom/google/android/gms/internal/zzid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzGW:Lcom/google/android/gms/internal/zzjj;

.field final synthetic zzGX:Lcom/google/android/gms/internal/zzhb$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzhb$zza;Lcom/google/android/gms/internal/zzjj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhb$zza$3;->zzGX:Lcom/google/android/gms/internal/zzhb$zza;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhb$zza$3;->zzGW:Lcom/google/android/gms/internal/zzjj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzqw;Ljava/util/Map;)V
    .locals 2
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhb$zza$3;->zzGX:Lcom/google/android/gms/internal/zzhb$zza;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhb$zza;->zza(Lcom/google/android/gms/internal/zzhb$zza;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqw;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhb$zza$3;->zzGW:Lcom/google/android/gms/internal/zzjj;

    const-string v1, "/hideOverlay"

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/internal/zzjj;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
