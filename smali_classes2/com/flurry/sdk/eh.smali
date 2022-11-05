.class public Lcom/flurry/sdk/eh;
.super Lcom/flurry/sdk/kg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/eh$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public b:I

.field public c:I

.field public d:Lcom/flurry/sdk/ei;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/flurry/sdk/eh;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/eh;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "com.flurry.android.impl.analytics.tumblr.TumblrEvents"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kg;-><init>(Ljava/lang/String;)V

    .line 23
    sget v0, Lcom/flurry/sdk/eh$a;->b:I

    iput v0, p0, Lcom/flurry/sdk/eh;->b:I

    .line 29
    sget-object v0, Lcom/flurry/sdk/ei;->a:Lcom/flurry/sdk/ei;

    iput-object v0, p0, Lcom/flurry/sdk/eh;->d:Lcom/flurry/sdk/ei;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/sdk/eh;->e:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static a(ILjava/lang/Long;)V
    .locals 4

    .prologue
    .line 36
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/eh;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Post success:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/flurry/sdk/eh;

    invoke-direct {v0}, Lcom/flurry/sdk/eh;-><init>()V

    .line 38
    iput p0, v0, Lcom/flurry/sdk/eh;->c:I

    .line 39
    iput-object p1, v0, Lcom/flurry/sdk/eh;->f:Ljava/lang/Long;

    .line 40
    sget v1, Lcom/flurry/sdk/eh$a;->a:I

    iput v1, v0, Lcom/flurry/sdk/eh;->b:I

    .line 41
    invoke-virtual {v0}, Lcom/flurry/sdk/eh;->b()V

    .line 42
    return-void
.end method

.method public static a(Lcom/flurry/sdk/ei;ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 45
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/eh;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Post failure:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/flurry/sdk/eh;

    invoke-direct {v0}, Lcom/flurry/sdk/eh;-><init>()V

    .line 47
    iput-object p0, v0, Lcom/flurry/sdk/eh;->d:Lcom/flurry/sdk/ei;

    .line 48
    iput p1, v0, Lcom/flurry/sdk/eh;->c:I

    .line 49
    iput-object p2, v0, Lcom/flurry/sdk/eh;->e:Ljava/lang/String;

    .line 50
    sget v1, Lcom/flurry/sdk/eh$a;->b:I

    iput v1, v0, Lcom/flurry/sdk/eh;->b:I

    .line 51
    invoke-virtual {v0}, Lcom/flurry/sdk/eh;->b()V

    .line 52
    return-void
.end method
