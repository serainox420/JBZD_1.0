.class Lcom/google/android/gms/internal/zzxb$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzxb$1;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaqQ:Lcom/google/android/gms/internal/zzxb$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzxb$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxb$1$2;->zzaqQ:Lcom/google/android/gms/internal/zzxb$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb$1$2;->zzaqQ:Lcom/google/android/gms/internal/zzxb$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzxb$1;->zzaqP:Lcom/google/android/gms/internal/zzxb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzxb;->zza(Lcom/google/android/gms/internal/zzxb;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb$1$2;->zzaqQ:Lcom/google/android/gms/internal/zzxb$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzxb$1;->zzaqP:Lcom/google/android/gms/internal/zzxb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzxb;->zzb(Lcom/google/android/gms/internal/zzxb;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxb$1$2;->zzaqQ:Lcom/google/android/gms/internal/zzxb$1;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzxb$1;->zzaqP:Lcom/google/android/gms/internal/zzxb;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb$1$2;->zzaqQ:Lcom/google/android/gms/internal/zzxb$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzxb$1;->zzaqP:Lcom/google/android/gms/internal/zzxb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzxb;->zzc(Lcom/google/android/gms/internal/zzxb;)Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb$1$2;->zzaqQ:Lcom/google/android/gms/internal/zzxb$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzxb$1;->zzaqP:Lcom/google/android/gms/internal/zzxb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzxb;->zzc(Lcom/google/android/gms/internal/zzxb;)Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;->onOverlayDismissed()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb$1$2;->zzaqQ:Lcom/google/android/gms/internal/zzxb$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzxb$1;->zzaqP:Lcom/google/android/gms/internal/zzxb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzxb;->zzd(Lcom/google/android/gms/internal/zzxb;)V

    :cond_1
    return-void
.end method
