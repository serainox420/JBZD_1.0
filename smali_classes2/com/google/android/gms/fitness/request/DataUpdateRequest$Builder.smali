.class public Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/request/DataUpdateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zzaSt:J

.field private zzaUn:Lcom/google/android/gms/fitness/data/DataSet;

.field private zzafe:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private zzCY()V
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzafe:J

    const-string v0, "Must set a non-zero value for startTimeMillis/startTime"

    invoke-static {v4, v5, v0}, Lcom/google/android/gms/common/internal/zzac;->zza(JLjava/lang/Object;)J

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzaSt:J

    const-string v0, "Must set a non-zero value for endTimeMillis/endTime"

    invoke-static {v4, v5, v0}, Lcom/google/android/gms/common/internal/zzac;->zza(JLjava/lang/Object;)J

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzaUn:Lcom/google/android/gms/fitness/data/DataSet;

    const-string v3, "Must set the data set"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzaUn:Lcom/google/android/gms/fitness/data/DataSet;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSet;->getDataPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/fitness/data/DataPoint;->getStartTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/fitness/data/DataPoint;->getEndTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gtz v0, :cond_2

    cmp-long v0, v4, v10

    if-eqz v0, :cond_0

    iget-wide v8, p0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzafe:J

    cmp-long v0, v4, v8

    if-ltz v0, :cond_2

    :cond_0
    cmp-long v0, v4, v10

    if-eqz v0, :cond_1

    iget-wide v8, p0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzaSt:J

    cmp-long v0, v4, v8

    if-gtz v0, :cond_2

    :cond_1
    iget-wide v8, p0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzaSt:J

    cmp-long v0, v6, v8

    if-gtz v0, :cond_2

    iget-wide v8, p0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzafe:J

    cmp-long v0, v6, v8

    if-gez v0, :cond_3

    :cond_2
    move v0, v1

    :goto_1
    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    const-string v8, "Data Point\'s startTimeMillis %d, endTimeMillis %d should lie between timeRange provided in the request. StartTimeMillis %d, EndTimeMillis: %d"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v9, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v9, v1

    const/4 v4, 0x2

    iget-wide v6, p0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzafe:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v9, v4

    const/4 v4, 0x3

    iget-wide v6, p0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzaSt:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v9, v4

    invoke-static {v0, v8, v9}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzafe:J

    return-wide v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzaSt:J

    return-wide v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;)Lcom/google/android/gms/fitness/data/DataSet;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzaUn:Lcom/google/android/gms/fitness/data/DataSet;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/fitness/request/DataUpdateRequest;
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzCY()V

    new-instance v0, Lcom/google/android/gms/fitness/request/DataUpdateRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/request/DataUpdateRequest;-><init>(Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;Lcom/google/android/gms/fitness/request/DataUpdateRequest$1;)V

    return-object v0
.end method

.method public setDataSet(Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;
    .locals 1

    const-string v0, "Must set the data set"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzaUn:Lcom/google/android/gms/fitness/data/DataSet;

    return-object p0
.end method

.method public setTimeInterval(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Invalid start time :%d"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    cmp-long v0, p3, p1

    if-ltz v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "Invalid end time :%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p5, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzafe:J

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzaSt:J

    return-object p0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method
