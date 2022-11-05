.class public Lcom/google/android/gms/internal/zzbyb;
.super Landroid/support/customtabs/d;


# instance fields
.field private zzcwd:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/zzbyc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbyc;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/customtabs/d;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbyb;->zzcwd:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroid/support/customtabs/b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbyb;->zzcwd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbyc;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/zzbyc;->zza(Landroid/support/customtabs/b;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbyb;->zzcwd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbyc;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbyc;->zzfI()V

    :cond_0
    return-void
.end method
