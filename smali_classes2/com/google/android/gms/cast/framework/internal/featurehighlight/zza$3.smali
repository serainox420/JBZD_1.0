.class Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzh(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzarm:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

.field final synthetic zzarq:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$3;->zzarm:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$3;->zzarq:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$3;->zzarq:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$3;->zzarq:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$3;->zzarm:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zztf()V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$3;->zzarm:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
