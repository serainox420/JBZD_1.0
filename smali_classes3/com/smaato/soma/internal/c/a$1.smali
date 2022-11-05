.class Lcom/smaato/soma/internal/c/a$1;
.super Lcom/smaato/soma/l;
.source "CalendarEventCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/c/a;-><init>(Lcom/smaato/soma/internal/c/j;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/internal/c/j;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/smaato/soma/internal/c/a;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/c/a;Lcom/smaato/soma/internal/c/j;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/smaato/soma/internal/c/a$1;->c:Lcom/smaato/soma/internal/c/a;

    iput-object p2, p0, Lcom/smaato/soma/internal/c/a$1;->a:Lcom/smaato/soma/internal/c/j;

    iput-object p3, p0, Lcom/smaato/soma/internal/c/a$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smaato/soma/internal/c/a$1;->c:Lcom/smaato/soma/internal/c/a;

    iget-object v1, p0, Lcom/smaato/soma/internal/c/a$1;->a:Lcom/smaato/soma/internal/c/j;

    iput-object v1, v0, Lcom/smaato/soma/internal/c/a;->a:Lcom/smaato/soma/internal/c/j;

    .line 34
    iget-object v0, p0, Lcom/smaato/soma/internal/c/a$1;->c:Lcom/smaato/soma/internal/c/a;

    iget-object v1, p0, Lcom/smaato/soma/internal/c/a$1;->b:Landroid/content/Context;

    iput-object v1, v0, Lcom/smaato/soma/internal/c/a;->b:Landroid/content/Context;

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 36
    iget-object v0, p0, Lcom/smaato/soma/internal/c/a$1;->c:Lcom/smaato/soma/internal/c/a;

    invoke-static {v0}, Lcom/smaato/soma/internal/c/a;->a(Lcom/smaato/soma/internal/c/a;)V

    .line 42
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/internal/c/a$1;->c:Lcom/smaato/soma/internal/c/a;

    iget-object v0, v0, Lcom/smaato/soma/internal/c/a;->b:Landroid/content/Context;

    const-string v1, "Oups ! This feature is not supported by your device"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/smaato/soma/internal/c/a$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
