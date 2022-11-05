.class public abstract Lcom/google/android/gms/internal/zzbia;
.super Ljava/lang/Object;


# instance fields
.field private zzAW:I

.field protected final zzbJm:Lcom/google/android/gms/internal/zzbbd;

.field protected final zzbLR:Lcom/google/android/gms/internal/zzbie;

.field protected final zzbLS:Lcom/google/android/gms/internal/zzbic;

.field protected final zzuP:Lcom/google/android/gms/common/util/zze;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/zzbie;Lcom/google/android/gms/internal/zzbic;Lcom/google/android/gms/internal/zzbbd;)V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzzc()Lcom/google/android/gms/common/util/zze;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbia;-><init>(ILcom/google/android/gms/internal/zzbie;Lcom/google/android/gms/internal/zzbic;Lcom/google/android/gms/internal/zzbbd;Lcom/google/android/gms/common/util/zze;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/zzbie;Lcom/google/android/gms/internal/zzbic;Lcom/google/android/gms/internal/zzbbd;Lcom/google/android/gms/common/util/zze;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbie;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbia;->zzbLR:Lcom/google/android/gms/internal/zzbie;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbie;->zzSK()Lcom/google/android/gms/internal/zzbhx;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/gms/internal/zzbia;->zzAW:I

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbic;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbia;->zzbLS:Lcom/google/android/gms/internal/zzbic;

    invoke-static {p5}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/util/zze;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbia;->zzuP:Lcom/google/android/gms/common/util/zze;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbia;->zzbJm:Lcom/google/android/gms/internal/zzbbd;

    return-void
.end method


# virtual methods
.method public zzA(II)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbia;->zzbJm:Lcom/google/android/gms/internal/zzbbd;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbia;->zzbJm:Lcom/google/android/gms/internal/zzbbd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbbd;->zzQs()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbia;->zzbLR:Lcom/google/android/gms/internal/zzbie;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbie;->zzSK()Lcom/google/android/gms/internal/zzbhx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbhx;->getContainerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbia;->zznJ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3d

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to fetch the container resource for the container \""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzbif;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzazz:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/zzbif;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbia;->zza(Lcom/google/android/gms/internal/zzbif;)V

    return-void
.end method

.method public zzN([B)V
    .locals 7

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbia;->zzO([B)Lcom/google/android/gms/internal/zzbif;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbia;->zzbJm:Lcom/google/android/gms/internal/zzbbd;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzbia;->zzAW:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbia;->zzbJm:Lcom/google/android/gms/internal/zzbbd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbbd;->zzQt()V

    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbif;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzazx:Lcom/google/android/gms/common/api/Status;

    if-ne v0, v1, :cond_1

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbif;->zzSL()Lcom/google/android/gms/internal/zzbif$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbif$zza;->zzSQ()Lcom/google/android/gms/internal/zzbio;

    move-result-object v3

    new-instance v0, Lcom/google/android/gms/internal/zzbif$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbia;->zzbLR:Lcom/google/android/gms/internal/zzbie;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbie;->zzSK()Lcom/google/android/gms/internal/zzbhx;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbia;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbif$zza;-><init>(Lcom/google/android/gms/internal/zzbhx;[BLcom/google/android/gms/internal/zzbio;J)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbif;->zzSM()Lcom/google/android/gms/internal/zzbir;

    move-result-object v2

    new-instance v1, Lcom/google/android/gms/internal/zzbif;

    sget-object v3, Lcom/google/android/gms/common/api/Status;->zzazx:Lcom/google/android/gms/common/api/Status;

    iget v4, p0, Lcom/google/android/gms/internal/zzbia;->zzAW:I

    invoke-direct {v1, v3, v4, v0, v2}, Lcom/google/android/gms/internal/zzbif;-><init>(Lcom/google/android/gms/common/api/Status;ILcom/google/android/gms/internal/zzbif$zza;Lcom/google/android/gms/internal/zzbir;)V

    move-object v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbia;->zza(Lcom/google/android/gms/internal/zzbif;)V

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzbif;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzazz:Lcom/google/android/gms/common/api/Status;

    iget v2, p0, Lcom/google/android/gms/internal/zzbia;->zzAW:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbif;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    goto :goto_0
.end method

.method protected zzO([B)Lcom/google/android/gms/internal/zzbif;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbia;->zzbLS:Lcom/google/android/gms/internal/zzbic;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzbic;->zzP([B)Lcom/google/android/gms/internal/zzbif;
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzbhy; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v1, "Resource data is corrupted"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbbu;->zzbg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract zza(Lcom/google/android/gms/internal/zzbif;)V
.end method

.method public zznJ(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, "Unknown reason"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "Resource not available"

    goto :goto_0

    :pswitch_1
    const-string v0, "IOError"

    goto :goto_0

    :pswitch_2
    const-string v0, "Server error"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
