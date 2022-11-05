.class public Lcom/google/android/gms/wearable/internal/zzu;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/wearable/Channel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wearable/internal/zzu$zzb;,
        Lcom/google/android/gms/wearable/internal/zzu$zza;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/internal/zzu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mPath:Ljava/lang/String;

.field private final zzaiJ:Ljava/lang/String;

.field private final zzbSS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzv;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzv;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/zzu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzu;->zzaiJ:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzu;->zzbSS:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzu;->mPath:Ljava/lang/String;

    return-void
.end method

.method private static zza(Ljava/lang/String;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzb$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/IntentFilter;",
            ")",
            "Lcom/google/android/gms/wearable/internal/zzb$zza",
            "<",
            "Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzu$7;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/internal/zzu$7;-><init>(Ljava/lang/String;[Landroid/content/IntentFilter;)V

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/wearable/internal/zzu;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzu;->zzaiJ:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/IntentFilter;

    const/4 v1, 0x0

    const-string v2, "com.google.android.gms.wearable.CHANNEL_EVENT"

    invoke-static {v2}, Lcom/google/android/gms/wearable/internal/zzcv;->zzip(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzu;->zzaiJ:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/gms/wearable/internal/zzu;->zza(Ljava/lang/String;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzb$zza;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/wearable/internal/zzb;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/internal/zzb$zza;Ljava/lang/Object;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public close(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzu$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/internal/zzu$1;-><init>(Lcom/google/android/gms/wearable/internal/zzu;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v0

    return-object v0
.end method

.method public close(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzu$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzu$2;-><init>(Lcom/google/android/gms/wearable/internal/zzu;Lcom/google/android/gms/common/api/GoogleApiClient;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/wearable/internal/zzu;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/wearable/internal/zzu;

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzu;->zzaiJ:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/internal/zzu;->zzaiJ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/wearable/internal/zzu;->zzbSS:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/zzu;->zzbSS:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/wearable/internal/zzu;->mPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/zzu;->mPath:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getInputStream(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/wearable/Channel$GetInputStreamResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzu$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/internal/zzu$3;-><init>(Lcom/google/android/gms/wearable/internal/zzu;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v0

    return-object v0
.end method

.method public getNodeId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzu;->zzbSS:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputStream(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/wearable/Channel$GetOutputStreamResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzu$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/internal/zzu$4;-><init>(Lcom/google/android/gms/wearable/internal/zzu;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzu;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzu;->zzaiJ:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzu;->zzaiJ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public receiveFile(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;Z)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Landroid/net/Uri;",
            "Z)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const-string v0, "client is null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "uri is null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzu$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/wearable/internal/zzu$5;-><init>(Lcom/google/android/gms/wearable/internal/zzu;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;Z)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v0

    return-object v0
.end method

.method public removeListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const-string v0, "client is null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "listener is null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzq$zzb;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzu;->zzaiJ:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/wearable/internal/zzq$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v0

    return-object v0
.end method

.method public sendFile(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/wearable/internal/zzu;->sendFile(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;JJ)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public sendFile(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;JJ)Lcom/google/android/gms/common/api/PendingResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Landroid/net/Uri;",
            "JJ)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "client is null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzu;->zzaiJ:Ljava/lang/String;

    const-string v3, "token is null"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "uri is null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    cmp-long v0, p3, v6

    if-ltz v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "startOffset is negative: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    cmp-long v0, p5, v6

    if-gez v0, :cond_0

    const-wide/16 v4, -0x1

    cmp-long v0, p5, v4

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    :goto_1
    const-string v3, "invalid length: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzu$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/wearable/internal/zzu$6;-><init>(Lcom/google/android/gms/wearable/internal/zzu;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;JJ)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzu;->zzaiJ:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzu;->zzbSS:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzu;->mPath:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2b

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "ChannelImpl{, token=\'"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", nodeId=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", path=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzv;->zza(Lcom/google/android/gms/wearable/internal/zzu;Landroid/os/Parcel;I)V

    return-void
.end method
