.class Lcom/google/android/gms/internal/zzyq$zzb$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzyq$zzb;->onApplicationDisconnected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzawr:Lcom/google/android/gms/internal/zzyq;

.field final synthetic zzaws:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzyq$zzb;Lcom/google/android/gms/internal/zzyq;I)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzyq$zzb$1;->zzawr:Lcom/google/android/gms/internal/zzyq;

    iput p3, p0, Lcom/google/android/gms/internal/zzyq$zzb$1;->zzaws:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyq$zzb$1;->zzawr:Lcom/google/android/gms/internal/zzyq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzyq;->zzd(Lcom/google/android/gms/internal/zzyq;)Lcom/google/android/gms/cast/Cast$Listener;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/zzyq$zzb$1;->zzaws:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationDisconnected(I)V

    return-void
.end method
