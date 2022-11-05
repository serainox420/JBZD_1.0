.class public Lcom/smaato/soma/internal/c/c;
.super Ljava/lang/Object;
.source "Controller.java"


# static fields
.field private static a:Lcom/smaato/soma/internal/c/c;

.field private static b:I

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    sput v0, Lcom/smaato/soma/internal/c/c;->b:I

    .line 22
    sput-boolean v0, Lcom/smaato/soma/internal/c/c;->c:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/smaato/soma/internal/c/c;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/smaato/soma/internal/c/c;->a:Lcom/smaato/soma/internal/c/c;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/smaato/soma/internal/c/c;

    invoke-direct {v0}, Lcom/smaato/soma/internal/c/c;-><init>()V

    sput-object v0, Lcom/smaato/soma/internal/c/c;->a:Lcom/smaato/soma/internal/c/c;

    .line 36
    :cond_0
    sget-object v0, Lcom/smaato/soma/internal/c/c;->a:Lcom/smaato/soma/internal/c/c;

    return-object v0
.end method

.method private a(Z)V
    .locals 0

    .prologue
    .line 61
    sput-boolean p1, Lcom/smaato/soma/internal/c/c;->c:Z

    .line 62
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;FF)Z
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/smaato/soma/internal/c/c$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/smaato/soma/internal/c/c$1;-><init>(Lcom/smaato/soma/internal/c/c;FLandroid/view/View;F)V

    .line 85
    invoke-virtual {v0}, Lcom/smaato/soma/internal/c/c$1;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 78
    return v0
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 40
    sget v0, Lcom/smaato/soma/internal/c/c;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/smaato/soma/internal/c/c;->b:I

    .line 41
    new-instance v0, Lcom/smaato/soma/debug/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Something went wrong !!"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 45
    sget v0, Lcom/smaato/soma/internal/c/c;->b:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 46
    invoke-direct {p0, v4}, Lcom/smaato/soma/internal/c/c;->a(Z)V

    .line 48
    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    const-string v0, ""

    const-string v1, "INIT SUCCESS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    sput v2, Lcom/smaato/soma/internal/c/c;->b:I

    .line 53
    invoke-direct {p0, v2}, Lcom/smaato/soma/internal/c/c;->a(Z)V

    .line 54
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/smaato/soma/internal/c/c;->c:Z

    return v0
.end method
