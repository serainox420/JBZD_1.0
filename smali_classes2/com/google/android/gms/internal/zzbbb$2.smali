.class Lcom/google/android/gms/internal/zzbbb$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbbb;->zzaB(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbJq:Lcom/google/android/gms/internal/zzbbb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbbb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbbb$2;->zzbJq:Lcom/google/android/gms/internal/zzbbb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb$2;->zzbJq:Lcom/google/android/gms/internal/zzbbb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbb;->zzc(Lcom/google/android/gms/internal/zzbbb;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzbbb$zzd;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbbb$2;->zzbJq:Lcom/google/android/gms/internal/zzbbb;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzbbb$zzd;-><init>(Lcom/google/android/gms/internal/zzbbb;Lcom/google/android/gms/internal/zzbbb$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
