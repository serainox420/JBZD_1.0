.class Lcom/google/android/gms/internal/zzxc$1$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzxc$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaqU:Lcom/google/android/gms/internal/zzxc$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzxc$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxc$1$1;->zzaqU:Lcom/google/android/gms/internal/zzxc$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxc$1$1;->zzaqU:Lcom/google/android/gms/internal/zzxc$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzxc$1;->zzaqT:Lcom/google/android/gms/internal/zzxc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzxc;->zza(Lcom/google/android/gms/internal/zzxc;)V

    return-void
.end method
