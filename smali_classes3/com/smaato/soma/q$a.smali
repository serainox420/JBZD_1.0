.class Lcom/smaato/soma/q$a;
.super Ljava/lang/Object;
.source "SentryClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/smaato/soma/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 310
    new-instance v0, Lcom/smaato/soma/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smaato/soma/q;-><init>(Lcom/smaato/soma/q$1;)V

    sput-object v0, Lcom/smaato/soma/q$a;->a:Lcom/smaato/soma/q;

    return-void
.end method

.method static synthetic a()Lcom/smaato/soma/q;
    .locals 1

    .prologue
    .line 309
    sget-object v0, Lcom/smaato/soma/q$a;->a:Lcom/smaato/soma/q;

    return-object v0
.end method
