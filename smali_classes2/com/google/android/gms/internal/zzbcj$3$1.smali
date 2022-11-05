.class Lcom/google/android/gms/internal/zzbcj$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbcj$3;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;

.field private zzbKO:Z

.field final synthetic zzbKP:Landroid/os/Bundle;

.field final synthetic zzbKQ:Ljava/lang/String;

.field final synthetic zzbKR:J

.field final synthetic zzbKT:Lcom/google/android/gms/internal/zzbcj$3;

.field final synthetic zzbuO:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbcj$3;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbcj$3$1;->zzbKT:Lcom/google/android/gms/internal/zzbcj$3;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbcj$3$1;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbcj$3$1;->zzbKP:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbcj$3$1;->zzbKQ:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzbcj$3$1;->zzbKR:J

    iput-object p7, p0, Lcom/google/android/gms/internal/zzbcj$3$1;->zzbuO:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbcj$3$1;->zzbKO:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcj$3$1;->zzbKT:Lcom/google/android/gms/internal/zzbcj$3;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbcj$3;->zzbKN:Lcom/google/android/gms/internal/zzbcj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbcj;->zza(Lcom/google/android/gms/internal/zzbcj;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcj$3$1;->zzbKT:Lcom/google/android/gms/internal/zzbcj$3;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbcj$3;->zzbKN:Lcom/google/android/gms/internal/zzbcj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbcj;->zzb(Lcom/google/android/gms/internal/zzbcj;)Lcom/google/android/gms/internal/zzbcm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbcj$3$1;->val$name:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbcj$3$1;->zzbKP:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbcj$3$1;->zzbKQ:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzbcj$3$1;->zzbKR:J

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzbcm;->zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcj$3$1;->zzbKT:Lcom/google/android/gms/internal/zzbcj$3;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbcj$3;->zzbKN:Lcom/google/android/gms/internal/zzbcj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbcj;->zza(Lcom/google/android/gms/internal/zzbcj;)I

    move-result v0

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcj$3$1;->zzbKT:Lcom/google/android/gms/internal/zzbcj$3;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbcj$3;->zzbKN:Lcom/google/android/gms/internal/zzbcj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbcj;->zza(Lcom/google/android/gms/internal/zzbcj;)I

    move-result v0

    if-ne v0, v4, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbcj$3$1;->zzbKO:Z

    if-nez v0, :cond_2

    const-string v0, "Container not loaded yet: deferring event listener by enqueuing the event: name = %s, origin = %s, params = %s."

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbcj$3$1;->val$name:Ljava/lang/String;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbcj$3$1;->zzbuO:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbcj$3$1;->zzbKP:Landroid/os/Bundle;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzbcj$3$1;->zzbKO:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcj$3$1;->zzbKT:Lcom/google/android/gms/internal/zzbcj$3;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbcj$3;->zzbKN:Lcom/google/android/gms/internal/zzbcj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbcj;->zze(Lcom/google/android/gms/internal/zzbcj;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v0, "Invalid state - not expecting to see a deferred event during container loading."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->zzbh(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcj$3$1;->zzbKT:Lcom/google/android/gms/internal/zzbcj$3;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbcj$3;->zzbKN:Lcom/google/android/gms/internal/zzbcj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbcj;->zza(Lcom/google/android/gms/internal/zzbcj;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    const-string v0, "Container failed to load: skipping event listener by ignoring the event: name = %s, origin = %s, params = %s."

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbcj$3$1;->val$name:Ljava/lang/String;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbcj$3$1;->zzbuO:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbcj$3$1;->zzbKP:Landroid/os/Bundle;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcj$3$1;->zzbKT:Lcom/google/android/gms/internal/zzbcj$3;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbcj$3;->zzbKN:Lcom/google/android/gms/internal/zzbcj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbcj;->zza(Lcom/google/android/gms/internal/zzbcj;)I

    move-result v0

    const/16 v1, 0x1c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected state:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbcj$3$1;->zzbKT:Lcom/google/android/gms/internal/zzbcj$3;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzbcj$3;->zzbKN:Lcom/google/android/gms/internal/zzbcj;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbcj;->zzd(Lcom/google/android/gms/internal/zzbcj;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbbe;->zzc(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0
.end method
