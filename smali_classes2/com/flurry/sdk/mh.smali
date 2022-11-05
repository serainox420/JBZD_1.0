.class public Lcom/flurry/sdk/mh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:I

.field public static h:I

.field public static i:I

.field public static j:I

.field public static k:I

.field public static l:I

.field public static m:I

.field public static n:I

.field public static o:I

.field public static p:I

.field public static q:I

.field public static r:I

.field private static final s:Ljava/lang/String;

.field private static t:Lcom/flurry/sdk/mh;


# instance fields
.field public a:Lcom/flurry/sdk/mj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8
    const-class v0, Lcom/flurry/sdk/mh;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/mh;->s:Ljava/lang/String;

    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/flurry/sdk/mh;->t:Lcom/flurry/sdk/mh;

    .line 14
    sput v1, Lcom/flurry/sdk/mh;->b:I

    .line 15
    const/4 v0, 0x1

    sput v0, Lcom/flurry/sdk/mh;->c:I

    .line 16
    const/4 v0, 0x2

    sput v0, Lcom/flurry/sdk/mh;->d:I

    .line 17
    const/4 v0, 0x3

    sput v0, Lcom/flurry/sdk/mh;->e:I

    .line 18
    const/4 v0, 0x4

    sput v0, Lcom/flurry/sdk/mh;->f:I

    .line 20
    sput v1, Lcom/flurry/sdk/mh;->g:I

    .line 22
    const/16 v0, 0x64

    sput v0, Lcom/flurry/sdk/mh;->h:I

    .line 23
    const/16 v0, 0x65

    sput v0, Lcom/flurry/sdk/mh;->i:I

    .line 24
    const/16 v0, 0x66

    sput v0, Lcom/flurry/sdk/mh;->j:I

    .line 26
    const/16 v0, 0x3e9

    sput v0, Lcom/flurry/sdk/mh;->k:I

    .line 27
    const/16 v0, 0x3eb

    sput v0, Lcom/flurry/sdk/mh;->l:I

    .line 28
    const/16 v0, 0x3ef

    sput v0, Lcom/flurry/sdk/mh;->m:I

    .line 30
    const/16 v0, 0x4b7

    sput v0, Lcom/flurry/sdk/mh;->n:I

    .line 31
    const/16 v0, 0x3f1

    sput v0, Lcom/flurry/sdk/mh;->o:I

    .line 32
    const/16 v0, 0x5e3

    sput v0, Lcom/flurry/sdk/mh;->p:I

    .line 33
    const/16 v0, 0x6a7

    sput v0, Lcom/flurry/sdk/mh;->q:I

    .line 35
    const v0, 0xfb77b

    sput v0, Lcom/flurry/sdk/mh;->r:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/flurry/sdk/mh;->g:I

    return v0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 38
    const-string v0, "single"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    sget v0, Lcom/flurry/sdk/mh;->c:I

    .line 47
    :goto_0
    return v0

    .line 40
    :cond_0
    const-string v0, "carousel"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    sget v0, Lcom/flurry/sdk/mh;->d:I

    goto :goto_0

    .line 42
    :cond_1
    const-string v0, "rotator"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "rotater"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 43
    :cond_2
    sget v0, Lcom/flurry/sdk/mh;->e:I

    goto :goto_0

    .line 44
    :cond_3
    const-string v0, "fullpage"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 45
    sget v0, Lcom/flurry/sdk/mh;->f:I

    goto :goto_0

    .line 47
    :cond_4
    sget v0, Lcom/flurry/sdk/mh;->b:I

    goto :goto_0
.end method

.method public static b()Lcom/flurry/sdk/mh;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/flurry/sdk/mh;->t:Lcom/flurry/sdk/mh;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/flurry/sdk/mh;

    invoke-direct {v0}, Lcom/flurry/sdk/mh;-><init>()V

    sput-object v0, Lcom/flurry/sdk/mh;->t:Lcom/flurry/sdk/mh;

    .line 61
    :cond_0
    sget-object v0, Lcom/flurry/sdk/mh;->t:Lcom/flurry/sdk/mh;

    return-object v0
.end method
