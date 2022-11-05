.class Lcom/google/android/gms/internal/zzblh$zzc;
.super Lcom/google/android/gms/internal/zzblh;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzblh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzc"
.end annotation


# instance fields
.field private zzbWf:Landroid/view/Choreographer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzblh;-><init>()V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzblh$zzc;->zzbWf:Landroid/view/Choreographer;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzblh$zza;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblh$zzc;->zzbWf:Landroid/view/Choreographer;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzblh$zza;->zzUK()Landroid/view/Choreographer$FrameCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
