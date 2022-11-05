.class public abstract Lcom/google/android/gms/internal/zzblh$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzblh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation


# instance fields
.field private zzbWc:Ljava/lang/Runnable;

.field private zzbWd:Landroid/view/Choreographer$FrameCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doFrame(J)V
.end method

.method zzUK()Landroid/view/Choreographer$FrameCallback;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblh$zza;->zzbWd:Landroid/view/Choreographer$FrameCallback;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzblh$zza$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzblh$zza$1;-><init>(Lcom/google/android/gms/internal/zzblh$zza;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzblh$zza;->zzbWd:Landroid/view/Choreographer$FrameCallback;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzblh$zza;->zzbWd:Landroid/view/Choreographer$FrameCallback;

    return-object v0
.end method

.method zzUL()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblh$zza;->zzbWc:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzblh$zza$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzblh$zza$2;-><init>(Lcom/google/android/gms/internal/zzblh$zza;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzblh$zza;->zzbWc:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzblh$zza;->zzbWc:Ljava/lang/Runnable;

    return-object v0
.end method
