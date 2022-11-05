.class public Lcom/flurry/sdk/dq;
.super Lcom/flurry/sdk/ky;
.source "SourceFile"


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field public final a:Lcom/flurry/sdk/kq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kq",
            "<",
            "Lcom/flurry/sdk/dj;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/flurry/sdk/kq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kq",
            "<",
            "Lcom/flurry/sdk/dk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/flurry/sdk/dq;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dq;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dq;-><init>(B)V

    .line 41
    return-void
.end method

.method private constructor <init>(B)V
    .locals 3

    .prologue
    .line 44
    const-string v0, "Ads"

    const-class v1, Lcom/flurry/sdk/dq;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/ky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/flurry/sdk/kq;

    const-string v1, "sdk log request"

    new-instance v2, Lcom/flurry/sdk/ds;

    invoke-direct {v2}, Lcom/flurry/sdk/ds;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/kq;-><init>(Ljava/lang/String;Lcom/flurry/sdk/lg;)V

    iput-object v0, p0, Lcom/flurry/sdk/dq;->a:Lcom/flurry/sdk/kq;

    .line 37
    new-instance v0, Lcom/flurry/sdk/kq;

    const-string v1, "sdk log response"

    new-instance v2, Lcom/flurry/sdk/dt;

    invoke-direct {v2}, Lcom/flurry/sdk/dt;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/kq;-><init>(Ljava/lang/String;Lcom/flurry/sdk/lg;)V

    iput-object v0, p0, Lcom/flurry/sdk/dq;->g:Lcom/flurry/sdk/kq;

    .line 45
    const-string v0, "AdData_"

    iput-object v0, p0, Lcom/flurry/sdk/dq;->e:Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->b()V

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/dq;)Lcom/flurry/sdk/kq;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/flurry/sdk/dq;->g:Lcom/flurry/sdk/kq;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/flurry/sdk/dq;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/dq;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/dq;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/dq;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/dq;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static a([BLjava/lang/String;)[B
    .locals 6

    .prologue
    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 71
    array-length v0, v1

    .line 72
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 74
    array-length v0, v2

    array-length v3, v1

    add-int/2addr v0, v3

    array-length v3, p0

    add-int/2addr v0, v3

    new-array v3, v0, [B

    .line 76
    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 79
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 80
    aget-byte v4, v2, v0

    aput-byte v4, v3, v0

    .line 76
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    array-length v4, v2

    if-lt v0, v4, :cond_1

    array-length v4, v1

    array-length v5, v2

    add-int/2addr v4, v5

    if-ge v0, v4, :cond_1

    .line 83
    add-int/lit8 v4, v0, -0x4

    aget-byte v4, v1, v4

    aput-byte v4, v3, v0

    goto :goto_1

    .line 86
    :cond_1
    add-int/lit8 v4, v0, -0x4

    array-length v5, v1

    sub-int/2addr v4, v5

    aget-byte v4, p0, v4

    aput-byte v4, v3, v0

    goto :goto_1

    .line 90
    :cond_2
    return-object v3
.end method

.method static synthetic b(Lcom/flurry/sdk/dq;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/flurry/sdk/dq;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/flurry/sdk/dq;)V
    .locals 0

    .prologue
    .line 31
    .line 5120
    invoke-virtual {p0}, Lcom/flurry/sdk/ky;->b()V

    .line 31
    return-void
.end method

.method static synthetic d(Lcom/flurry/sdk/dq;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/flurry/sdk/dq;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final a([BLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x6

    const/4 v7, 0x4

    .line 1094
    const/4 v1, 0x4

    :try_start_0
    new-array v2, v1, [B

    .line 1095
    array-length v1, p1

    add-int/lit8 v1, v1, -0x4

    new-array v3, v1, [B

    move v1, v0

    .line 1096
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_3

    .line 1097
    if-ge v1, v7, :cond_0

    .line 1098
    aget-byte v4, p1, v1

    aput-byte v4, v2, v1

    .line 1096
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1101
    :cond_0
    add-int/lit8 v4, v1, -0x4

    aget-byte v5, p1, v1

    aput-byte v5, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 129
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/flurry/sdk/dq;->b:Ljava/lang/String;

    const-string v1, "Internal ERROR! Report is corrupt!"

    invoke-static {v8, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1314
    iget-object v0, p0, Lcom/flurry/sdk/ky;->d:Lcom/flurry/sdk/la;

    invoke-virtual {v0, p2, p3}, Lcom/flurry/sdk/la;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1316
    if-nez v0, :cond_1

    .line 1317
    iget-object v0, p0, Lcom/flurry/sdk/ky;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Internal error. Block wasn\'t deleted with id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1322
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/ky;->c:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 1323
    if-nez v0, :cond_2

    .line 1324
    iget-object v0, p0, Lcom/flurry/sdk/ky;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Internal error. Block with id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not in progress state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_2
    :goto_2
    return-void

    .line 1105
    :cond_3
    :try_start_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1106
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 1108
    new-array v2, v1, [B

    .line 1109
    array-length v4, v3

    sub-int/2addr v4, v1

    new-array v4, v4, [B

    .line 1110
    :goto_3
    array-length v5, v3

    if-ge v0, v5, :cond_5

    .line 1111
    if-ge v0, v1, :cond_4

    .line 1112
    aget-byte v5, v3, v0

    aput-byte v5, v2, v0

    .line 1110
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1115
    :cond_4
    sub-int v5, v0, v1

    aget-byte v6, v3, v0

    aput-byte v6, v4, v5

    goto :goto_4

    .line 1120
    :cond_5
    new-instance v1, Landroid/util/Pair;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 134
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 135
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [B

    .line 137
    iget-object v2, p0, Lcom/flurry/sdk/dq;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FlurryAdLogsManager: start upload data with id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v2, Lcom/flurry/sdk/ks;

    invoke-direct {v2}, Lcom/flurry/sdk/ks;-><init>()V

    .line 2136
    iput-object v0, v2, Lcom/flurry/sdk/ku;->f:Ljava/lang/String;

    .line 3027
    const v0, 0x186a0

    iput v0, v2, Lcom/flurry/sdk/mb;->w:I

    .line 142
    sget-object v0, Lcom/flurry/sdk/ku$a;->c:Lcom/flurry/sdk/ku$a;

    .line 3144
    iput-object v0, v2, Lcom/flurry/sdk/ku;->g:Lcom/flurry/sdk/ku$a;

    .line 143
    const-string v0, "Content-Type"

    const-string v3, "application/x-flurry"

    invoke-virtual {v2, v0, v3}, Lcom/flurry/sdk/ks;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v0, "Accept"

    const-string v3, "application/x-flurry"

    invoke-virtual {v2, v0, v3}, Lcom/flurry/sdk/ks;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v0, "FM-Checksum"

    invoke-static {v1}, Lcom/flurry/sdk/kq;->a([B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/flurry/sdk/ks;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v0, Lcom/flurry/sdk/lc;

    invoke-direct {v0}, Lcom/flurry/sdk/lc;-><init>()V

    .line 4041
    iput-object v0, v2, Lcom/flurry/sdk/ks;->c:Lcom/flurry/sdk/lg;

    .line 147
    new-instance v0, Lcom/flurry/sdk/lc;

    invoke-direct {v0}, Lcom/flurry/sdk/lc;-><init>()V

    .line 4045
    iput-object v0, v2, Lcom/flurry/sdk/ks;->d:Lcom/flurry/sdk/lg;

    .line 5037
    iput-object v1, v2, Lcom/flurry/sdk/ks;->b:Ljava/lang/Object;

    .line 149
    new-instance v0, Lcom/flurry/sdk/dq$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/flurry/sdk/dq$1;-><init>(Lcom/flurry/sdk/dq;Ljava/lang/String;Ljava/lang/String;)V

    .line 5049
    iput-object v0, v2, Lcom/flurry/sdk/ks;->a:Lcom/flurry/sdk/ks$a;

    .line 189
    invoke-static {}, Lcom/flurry/sdk/jw;->a()Lcom/flurry/sdk/jw;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;Lcom/flurry/sdk/mb;)V

    goto/16 :goto_2
.end method
