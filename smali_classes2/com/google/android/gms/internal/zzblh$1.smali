.class final Lcom/google/android/gms/internal/zzblh$1;
.super Ljava/lang/ThreadLocal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzblh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/google/android/gms/internal/zzblh;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzblh$1;->zzUJ()Lcom/google/android/gms/internal/zzblh;

    move-result-object v0

    return-object v0
.end method

.method protected zzUJ()Lcom/google/android/gms/internal/zzblh;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzblh$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzblh$zzc;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The current thread must have a looper!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzblh$zzb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzblh$zzb;-><init>(Landroid/os/Looper;)V

    goto :goto_0
.end method
