.class Lcom/google/android/gms/internal/zzbbb$zze;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbbb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zze"
.end annotation


# instance fields
.field final synthetic zzbJq:Lcom/google/android/gms/internal/zzbbb;

.field private final zzbJs:Lcom/google/android/gms/internal/zzbif;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbbb;Lcom/google/android/gms/internal/zzbif;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbbb$zze;->zzbJq:Lcom/google/android/gms/internal/zzbbb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbbb$zze;->zzbJs:Lcom/google/android/gms/internal/zzbif;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb$zze;->zzbJs:Lcom/google/android/gms/internal/zzbif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbif;->zzSL()Lcom/google/android/gms/internal/zzbif$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbif$zza;->zzSQ()Lcom/google/android/gms/internal/zzbio;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb$zze;->zzbJs:Lcom/google/android/gms/internal/zzbif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbif;->zzSM()Lcom/google/android/gms/internal/zzbir;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb$zze;->zzbJq:Lcom/google/android/gms/internal/zzbbb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbb;->zzb(Lcom/google/android/gms/internal/zzbbb;)Lcom/google/android/gms/internal/zzbcb;

    move-result-object v0

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb$zze;->zzbJq:Lcom/google/android/gms/internal/zzbbb;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbbb$zze;->zzbJq:Lcom/google/android/gms/internal/zzbbb;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzbbb;->zzm(Lcom/google/android/gms/internal/zzbbb;)Lcom/google/android/gms/internal/zzbcc;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/zzbcc;->zza(Lcom/google/android/gms/internal/zzbio;Lcom/google/android/gms/internal/zzbir;)Lcom/google/android/gms/internal/zzbcb;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzbbb;->zza(Lcom/google/android/gms/internal/zzbbb;Lcom/google/android/gms/internal/zzbcb;)Lcom/google/android/gms/internal/zzbcb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb$zze;->zzbJq:Lcom/google/android/gms/internal/zzbbb;

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzbbb;->zza(Lcom/google/android/gms/internal/zzbbb;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb$zze;->zzbJq:Lcom/google/android/gms/internal/zzbbb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbb;->zzd(Lcom/google/android/gms/internal/zzbbb;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x30

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Container "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " loaded during runtime initialization."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb$zze;->zzbJq:Lcom/google/android/gms/internal/zzbbb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbb;->zzi(Lcom/google/android/gms/internal/zzbbb;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb$zze;->zzbJq:Lcom/google/android/gms/internal/zzbbb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbb;->zzi(Lcom/google/android/gms/internal/zzbbb;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbbi;

    const-string v5, "Evaluating tags for pending event "

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbbi;->zzRU()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-static {v3}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbbb$zze;->zzbJq:Lcom/google/android/gms/internal/zzbbb;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbbb;->zzb(Lcom/google/android/gms/internal/zzbbb;)Lcom/google/android/gms/internal/zzbcb;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzbcb;->zzb(Lcom/google/android/gms/internal/zzbbi;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_0

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb$zze;->zzbJq:Lcom/google/android/gms/internal/zzbbb;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzbbb;->zza(Lcom/google/android/gms/internal/zzbbb;Ljava/util/List;)Ljava/util/List;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb$zze;->zzbJq:Lcom/google/android/gms/internal/zzbbb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbb;->zzb(Lcom/google/android/gms/internal/zzbbb;)Lcom/google/android/gms/internal/zzbcb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbcb;->dispatch()V

    const-string v3, "Runtime initialized successfully for container "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb$zze;->zzbJq:Lcom/google/android/gms/internal/zzbbb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbb;->zzd(Lcom/google/android/gms/internal/zzbbb;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb$zze;->zzbJs:Lcom/google/android/gms/internal/zzbif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbif;->zzSL()Lcom/google/android/gms/internal/zzbif$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbif$zza;->zzSR()J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb$zze;->zzbJq:Lcom/google/android/gms/internal/zzbbb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbb;->zzg(Lcom/google/android/gms/internal/zzbbb;)Lcom/google/android/gms/internal/zzbbd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbbd;->zzQq()J

    move-result-wide v6

    add-long/2addr v4, v6

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb$zze;->zzbJq:Lcom/google/android/gms/internal/zzbbb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbb;->zzl(Lcom/google/android/gms/internal/zzbbb;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb$zze;->zzbJs:Lcom/google/android/gms/internal/zzbif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbif;->getSource()I

    move-result v0

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb$zze;->zzbJq:Lcom/google/android/gms/internal/zzbbb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbb;->zzn(Lcom/google/android/gms/internal/zzbbb;)Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb$zze;->zzbJq:Lcom/google/android/gms/internal/zzbbb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbbb$zze;->zzbJq:Lcom/google/android/gms/internal/zzbbb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbbb;->zzg(Lcom/google/android/gms/internal/zzbbb;)Lcom/google/android/gms/internal/zzbbd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbbd;->zzRS()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/zzbbb;->zza(Lcom/google/android/gms/internal/zzbbb;J)V

    :goto_4
    return-void

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb$zze;->zzbJq:Lcom/google/android/gms/internal/zzbbb;

    const-wide/32 v2, 0xdbba0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbbb$zze;->zzbJq:Lcom/google/android/gms/internal/zzbbb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbbb;->zzn(Lcom/google/android/gms/internal/zzbbb;)Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/zzbbb;->zza(Lcom/google/android/gms/internal/zzbbb;J)V

    goto :goto_4
.end method
