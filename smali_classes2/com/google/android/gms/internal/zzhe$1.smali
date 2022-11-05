.class Lcom/google/android/gms/internal/zzhe$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzhe;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzHn:Lcom/google/android/gms/internal/zzhb;

.field final synthetic zzHo:Lcom/google/android/gms/internal/zzhe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzhe;Lcom/google/android/gms/internal/zzhb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhe$1;->zzHo:Lcom/google/android/gms/internal/zzhe;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhe$1;->zzHn:Lcom/google/android/gms/internal/zzhb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe$1;->zzHn:Lcom/google/android/gms/internal/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhb;->zzgb()Lcom/google/android/gms/internal/zzqw;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe$1;->zzHo:Lcom/google/android/gms/internal/zzhe;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzhe;->zzrY:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe$1;->zzHo:Lcom/google/android/gms/internal/zzhe;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzhe;->zzrY:Landroid/widget/FrameLayout;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe$1;->zzHn:Lcom/google/android/gms/internal/zzhb;

    instance-of v0, v0, Lcom/google/android/gms/internal/zzgz;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe$1;->zzHo:Lcom/google/android/gms/internal/zzhe;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe$1;->zzHn:Lcom/google/android/gms/internal/zzhb;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzhe;->zza(Lcom/google/android/gms/internal/zzhe;Lcom/google/android/gms/internal/zzhb;)V

    :cond_1
    return-void
.end method
