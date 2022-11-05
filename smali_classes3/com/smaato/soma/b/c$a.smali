.class Lcom/smaato/soma/b/c$a;
.super Landroid/os/Handler;
.source "ToasterLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/b/c;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/smaato/soma/j;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/smaato/soma/j;


# direct methods
.method private constructor <init>(Lcom/smaato/soma/b/c;Lcom/smaato/soma/j;)V
    .locals 1

    .prologue
    .line 102
    iput-object p1, p0, Lcom/smaato/soma/b/c$a;->a:Lcom/smaato/soma/b/c;

    .line 103
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smaato/soma/b/c$a;->b:Ljava/lang/ref/WeakReference;

    .line 104
    iput-object p2, p0, Lcom/smaato/soma/b/c$a;->c:Lcom/smaato/soma/j;

    .line 105
    return-void
.end method

.method synthetic constructor <init>(Lcom/smaato/soma/b/c;Lcom/smaato/soma/j;Lcom/smaato/soma/b/c$1;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/smaato/soma/b/c$a;-><init>(Lcom/smaato/soma/b/c;Lcom/smaato/soma/j;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/ref/WeakReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/smaato/soma/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/smaato/soma/b/c$a;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/smaato/soma/b/c$a;->c:Lcom/smaato/soma/j;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/smaato/soma/b/c$a;->b:Ljava/lang/ref/WeakReference;

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/b/c$a;->b:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/smaato/soma/b/c$a$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/b/c$a$1;-><init>(Lcom/smaato/soma/b/c$a;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 119
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 120
    new-instance v0, Lcom/smaato/soma/b/c$a$2;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/b/c$a$2;-><init>(Lcom/smaato/soma/b/c$a;Landroid/os/Message;)V

    .line 201
    invoke-virtual {v0}, Lcom/smaato/soma/b/c$a$2;->c()Ljava/lang/Object;

    .line 202
    return-void
.end method
