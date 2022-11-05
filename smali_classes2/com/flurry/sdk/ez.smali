.class public Lcom/flurry/sdk/ez;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/flurry/sdk/ez;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ez;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/flurry/sdk/ey;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 16
    .line 1033
    const-string v0, "com.flurry.android.is_image_post"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    new-instance v0, Lcom/flurry/sdk/ex;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ex;-><init>(Landroid/os/Bundle;)V

    .line 24
    :goto_0
    return-object v0

    .line 2029
    :cond_0
    const-string v0, "com.flurry.android.is_text_post"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    new-instance v0, Lcom/flurry/sdk/fa;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/fa;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/sdk/ez;->a:Ljava/lang/String;

    const-string v2, "This cannot happen. Its neither text or image post. lets move back."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    const/4 v0, 0x0

    goto :goto_0
.end method
