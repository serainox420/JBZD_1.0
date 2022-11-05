.class public Lcom/apprupt/sdk/Timeout;
.super Ljava/lang/Object;
.source "Timeout.java"


# instance fields
.field private a:Z

.field private b:I

.field private c:J

.field private d:Z

.field private e:Ljava/util/Timer;

.field private f:I

.field private final g:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean v2, p0, Lcom/apprupt/sdk/Timeout;->a:Z

    .line 15
    iput v2, p0, Lcom/apprupt/sdk/Timeout;->b:I

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/apprupt/sdk/Timeout;->c:J

    .line 17
    iput-boolean v2, p0, Lcom/apprupt/sdk/Timeout;->d:Z

    .line 19
    iput v2, p0, Lcom/apprupt/sdk/Timeout;->f:I

    .line 24
    iput-object p1, p0, Lcom/apprupt/sdk/Timeout;->g:Ljava/lang/Runnable;

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/apprupt/sdk/Timeout;I)I
    .locals 0

    .prologue
    .line 10
    iput p1, p0, Lcom/apprupt/sdk/Timeout;->b:I

    return p1
.end method

.method static synthetic a(Lcom/apprupt/sdk/Timeout;J)J
    .locals 1

    .prologue
    .line 10
    iput-wide p1, p0, Lcom/apprupt/sdk/Timeout;->c:J

    return-wide p1
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lcom/apprupt/sdk/Timeout$5;

    invoke-direct {v0, p0, p1}, Lcom/apprupt/sdk/Timeout$5;-><init>(Lcom/apprupt/sdk/Timeout;I)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 99
    return-void
.end method

.method static synthetic a(Lcom/apprupt/sdk/Timeout;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/apprupt/sdk/Timeout;->c()V

    return-void
.end method

.method static synthetic a(Lcom/apprupt/sdk/Timeout;Z)Z
    .locals 0

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/apprupt/sdk/Timeout;->a:Z

    return p1
.end method

.method private b()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/apprupt/sdk/Timeout;->e:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/apprupt/sdk/Timeout;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apprupt/sdk/Timeout;->e:Ljava/util/Timer;

    .line 32
    :cond_0
    iget v0, p0, Lcom/apprupt/sdk/Timeout;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/apprupt/sdk/Timeout;->f:I

    return v0
.end method

.method static synthetic b(Lcom/apprupt/sdk/Timeout;)I
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/apprupt/sdk/Timeout;->b()I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/apprupt/sdk/Timeout;I)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/apprupt/sdk/Timeout;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/apprupt/sdk/Timeout;Z)Z
    .locals 0

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/apprupt/sdk/Timeout;->d:Z

    return p1
.end method

.method static synthetic c(Lcom/apprupt/sdk/Timeout;)I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/apprupt/sdk/Timeout;->f:I

    return v0
.end method

.method private c()V
    .locals 6

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/apprupt/sdk/Timeout;->b()I

    move-result v0

    .line 65
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/apprupt/sdk/Timeout;->d:Z

    .line 66
    iget v1, p0, Lcom/apprupt/sdk/Timeout;->b:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/apprupt/sdk/Timeout;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/apprupt/sdk/Timeout;->b:I

    .line 67
    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/apprupt/sdk/Timeout;->e:Ljava/util/Timer;

    new-instance v2, Lcom/apprupt/sdk/Timeout$3;

    invoke-direct {v2, p0, v0}, Lcom/apprupt/sdk/Timeout$3;-><init>(Lcom/apprupt/sdk/Timeout;I)V

    iget-wide v4, p0, Lcom/apprupt/sdk/Timeout;->c:J

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 74
    return-void
.end method

.method static synthetic d(Lcom/apprupt/sdk/Timeout;)Z
    .locals 1

    .prologue
    .line 10
    iget-boolean v0, p0, Lcom/apprupt/sdk/Timeout;->d:Z

    return v0
.end method

.method static synthetic e(Lcom/apprupt/sdk/Timeout;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/apprupt/sdk/Timeout;->g:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic f(Lcom/apprupt/sdk/Timeout;)Z
    .locals 1

    .prologue
    .line 10
    iget-boolean v0, p0, Lcom/apprupt/sdk/Timeout;->a:Z

    return v0
.end method

.method static synthetic g(Lcom/apprupt/sdk/Timeout;)I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/apprupt/sdk/Timeout;->b:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/apprupt/sdk/Timeout$4;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/Timeout$4;-><init>(Lcom/apprupt/sdk/Timeout;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 84
    return-void
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Lcom/apprupt/sdk/Timeout$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/apprupt/sdk/Timeout$1;-><init>(Lcom/apprupt/sdk/Timeout;J)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 45
    return-void
.end method
