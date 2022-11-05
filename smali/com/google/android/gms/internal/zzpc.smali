.class public Lcom/google/android/gms/internal/zzpc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzpc$zza;
    }
.end annotation


# instance fields
.field private zzTZ:Z

.field private final zzWn:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/gms/internal/zzpc$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzWo:Ljava/lang/String;

.field private final zzWp:Ljava/lang/String;

.field private zzWq:J

.field private zzWr:J

.field private zzWs:J

.field private zzWt:J

.field private zzWu:J

.field private zzWv:J

.field private final zzrJ:Ljava/lang/Object;

.field private final zzuM:Lcom/google/android/gms/internal/zzpe;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpe;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpc;->zzrJ:Ljava/lang/Object;

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzpc;->zzWq:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzpc;->zzWr:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzpc;->zzTZ:Z

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzpc;->zzWs:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzpc;->zzWt:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzpc;->zzWu:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzpc;->zzWv:J

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpc;->zzuM:Lcom/google/android/gms/internal/zzpe;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpc;->zzWo:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpc;->zzWp:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpc;->zzWn:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzpc;-><init>(Lcom/google/android/gms/internal/zzpe;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpc;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "seq_num"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpc;->zzWo:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "slotid"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpc;->zzWp:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ismediation"

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzpc;->zzTZ:Z

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "treq"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzpc;->zzWu:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "tresponse"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzpc;->zzWv:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "timp"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzpc;->zzWr:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "tload"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzpc;->zzWs:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "pcc"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzpc;->zzWt:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "tfetch"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzpc;->zzWq:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpc;->zzWn:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpc$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpc$zza;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    const-string v0, "tclick"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public zzD(Z)V
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpc;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpc;->zzWv:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzpc;->zzWs:J

    if-nez p1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpc;->zzWs:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzpc;->zzWr:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpc;->zzuM:Lcom/google/android/gms/internal/zzpe;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzpe;->zza(Lcom/google/android/gms/internal/zzpc;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzE(Z)V
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpc;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpc;->zzWv:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzpc;->zzTZ:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpc;->zzuM:Lcom/google/android/gms/internal/zzpe;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzpe;->zza(Lcom/google/android/gms/internal/zzpc;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzjV()V
    .locals 6

    const-wide/16 v4, -0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpc;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpc;->zzWv:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpc;->zzWr:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzpc;->zzWr:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpc;->zzuM:Lcom/google/android/gms/internal/zzpe;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzpe;->zza(Lcom/google/android/gms/internal/zzpc;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpc;->zzuM:Lcom/google/android/gms/internal/zzpe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpe;->zzkj()Lcom/google/android/gms/internal/zzpf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpf;->zzjV()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzjW()V
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpc;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpc;->zzWv:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzpc$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzpc$zza;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpc$zza;->zzka()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpc;->zzWn:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpc;->zzWt:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzpc;->zzWt:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpc;->zzuM:Lcom/google/android/gms/internal/zzpe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpe;->zzkj()Lcom/google/android/gms/internal/zzpf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpf;->zzjW()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpc;->zzuM:Lcom/google/android/gms/internal/zzpe;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzpe;->zza(Lcom/google/android/gms/internal/zzpc;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzjX()V
    .locals 6

    const-wide/16 v4, -0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpc;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpc;->zzWv:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpc;->zzWn:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpc;->zzWn:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpc$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpc$zza;->zzjY()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpc$zza;->zzjZ()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpc;->zzuM:Lcom/google/android/gms/internal/zzpe;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzpe;->zza(Lcom/google/android/gms/internal/zzpc;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzm(J)V
    .locals 7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpc;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/zzpc;->zzWv:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpc;->zzWv:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpc;->zzuM:Lcom/google/android/gms/internal/zzpe;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzpe;->zza(Lcom/google/android/gms/internal/zzpc;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzn(J)V
    .locals 7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpc;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpc;->zzWv:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzpc;->zzWq:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpc;->zzuM:Lcom/google/android/gms/internal/zzpe;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzpe;->zza(Lcom/google/android/gms/internal/zzpc;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzs(Lcom/google/android/gms/internal/zzec;)V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpc;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzpc;->zzWu:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpc;->zzuM:Lcom/google/android/gms/internal/zzpe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpe;->zzkj()Lcom/google/android/gms/internal/zzpf;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpc;->zzWu:J

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/internal/zzpf;->zzb(Lcom/google/android/gms/internal/zzec;J)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
