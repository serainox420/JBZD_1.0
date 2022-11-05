.class Lcom/google/android/gms/internal/zzbcg$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbcg;->dispatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbKy:Lcom/google/android/gms/internal/zzbcg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbcg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbcg$2;->zzbKy:Lcom/google/android/gms/internal/zzbcg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcg$2;->zzbKy:Lcom/google/android/gms/internal/zzbcg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbcg;->zza(Lcom/google/android/gms/internal/zzbcg;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcg$2;->zzbKy:Lcom/google/android/gms/internal/zzbcg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbcg;->zze(Lcom/google/android/gms/internal/zzbcg;)Lcom/google/android/gms/internal/zzbbp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbbp;->dispatch()V

    return-void
.end method
