.class public final Lcom/flurry/sdk/az;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/az$a;
    }
.end annotation


# static fields
.field private static e:I


# instance fields
.field public a:I

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/ax;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    sput v0, Lcom/flurry/sdk/az;->e:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/flurry/sdk/az;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    sget v0, Lcom/flurry/sdk/az;->e:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/flurry/sdk/az;->e:I

    iput v0, p0, Lcom/flurry/sdk/az;->a:I

    .line 90
    invoke-static {}, Lcom/flurry/sdk/jk;->a()Lcom/flurry/sdk/jk;

    invoke-static {}, Lcom/flurry/sdk/jk;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/az;->b:J

    .line 91
    iput-object p1, p0, Lcom/flurry/sdk/az;->c:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/az;->d:Ljava/util/List;

    .line 94
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/az;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/flurry/sdk/az;->a:I

    return v0
.end method

.method static synthetic a(Lcom/flurry/sdk/az;I)I
    .locals 0

    .prologue
    .line 17
    iput p1, p0, Lcom/flurry/sdk/az;->a:I

    return p1
.end method

.method static synthetic a(Lcom/flurry/sdk/az;J)J
    .locals 1

    .prologue
    .line 17
    iput-wide p1, p0, Lcom/flurry/sdk/az;->b:J

    return-wide p1
.end method

.method static synthetic a(Lcom/flurry/sdk/az;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/flurry/sdk/az;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/az;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/flurry/sdk/az;->d:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/flurry/sdk/az;)J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/flurry/sdk/az;->b:J

    return-wide v0
.end method

.method static synthetic c(Lcom/flurry/sdk/az;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/flurry/sdk/az;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/flurry/sdk/az;)Ljava/util/List;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/flurry/sdk/az;->d:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 118
    if-ne p0, p1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v0

    .line 122
    :cond_1
    instance-of v2, p1, Lcom/flurry/sdk/az;

    if-nez v2, :cond_2

    move v0, v1

    .line 123
    goto :goto_0

    .line 126
    :cond_2
    check-cast p1, Lcom/flurry/sdk/az;

    .line 128
    iget v2, p0, Lcom/flurry/sdk/az;->a:I

    iget v3, p1, Lcom/flurry/sdk/az;->a:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/flurry/sdk/az;->b:J

    iget-wide v4, p1, Lcom/flurry/sdk/az;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/flurry/sdk/az;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/flurry/sdk/az;->c:Ljava/lang/String;

    .line 130
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/flurry/sdk/az;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/flurry/sdk/az;->d:Ljava/util/List;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/flurry/sdk/az;->d:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/flurry/sdk/az;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/flurry/sdk/az;->d:Ljava/util/List;

    .line 131
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 138
    iget v0, p0, Lcom/flurry/sdk/az;->a:I

    xor-int/lit8 v0, v0, 0x11

    .line 139
    int-to-long v0, v0

    iget-wide v2, p0, Lcom/flurry/sdk/az;->b:J

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 141
    iget-object v1, p0, Lcom/flurry/sdk/az;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/flurry/sdk/az;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/az;->d:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/flurry/sdk/az;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 149
    :cond_1
    return v0
.end method
