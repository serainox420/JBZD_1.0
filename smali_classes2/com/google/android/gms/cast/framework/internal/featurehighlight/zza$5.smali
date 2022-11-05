.class Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$5;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzk(Ljava/lang/Runnable;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzarm:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

.field final synthetic zzarr:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$5;->zzarm:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$5;->zzarr:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$5;->zzarm:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$5;->zzarm:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zza(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;Landroid/animation/Animator;)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$5;->zzarr:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$5;->zzarr:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
