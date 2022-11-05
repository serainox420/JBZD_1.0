.class Lcom/smaato/soma/internal/e/a$5;
.super Lcom/smaato/soma/l;
.source "CustomWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/e/a;->a(Landroid/content/Context;Lcom/smaato/soma/p;Ljava/lang/String;)V
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
.field final synthetic a:Lcom/smaato/soma/p;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/smaato/soma/internal/e/a;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/e/a;Lcom/smaato/soma/p;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/smaato/soma/internal/e/a$5;->d:Lcom/smaato/soma/internal/e/a;

    iput-object p2, p0, Lcom/smaato/soma/internal/e/a$5;->a:Lcom/smaato/soma/p;

    iput-object p3, p0, Lcom/smaato/soma/internal/e/a$5;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/smaato/soma/internal/e/a$5;->c:Landroid/content/Context;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 378
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 379
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 380
    const-string v0, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "adqualitysupport@smaato.com"

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const-string v0, "android.intent.extra.SUBJECT"

    const-string v2, "Ad Report"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 385
    const-string v2, "gmt"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 386
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Publisher Id : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/smaato/soma/internal/e/a$5;->d:Lcom/smaato/soma/internal/e/a;

    invoke-static {v3}, Lcom/smaato/soma/internal/e/a;->f(Lcom/smaato/soma/internal/e/a;)Lcom/smaato/soma/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smaato/soma/j;->getAdSettings()Lcom/smaato/soma/d;

    move-result-object v3

    .line 388
    invoke-virtual {v3}, Lcom/smaato/soma/d;->a()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\nAdSpace Id : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/smaato/soma/internal/e/a$5;->d:Lcom/smaato/soma/internal/e/a;

    .line 390
    invoke-static {v3}, Lcom/smaato/soma/internal/e/a;->f(Lcom/smaato/soma/internal/e/a;)Lcom/smaato/soma/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smaato/soma/j;->getAdSettings()Lcom/smaato/soma/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smaato/soma/d;->b()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\nSession Id : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/smaato/soma/internal/e/a$5;->a:Lcom/smaato/soma/p;

    check-cast v0, Lcom/smaato/soma/internal/b;

    .line 392
    invoke-virtual {v0}, Lcom/smaato/soma/internal/b;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\nTime : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "I\'m reporting this ad for the following reason: @REASON. Thanks for taking care. \nPlease find all info below : \n"

    const-string v3, "@REASON"

    iget-object v4, p0, Lcom/smaato/soma/internal/e/a$5;->b:Ljava/lang/String;

    .line 397
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    sget-object v2, Lcom/smaato/soma/internal/e/a$6;->a:[I

    iget-object v3, p0, Lcom/smaato/soma/internal/e/a$5;->a:Lcom/smaato/soma/p;

    invoke-interface {v3}, Lcom/smaato/soma/p;->d()Lcom/smaato/soma/AdType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smaato/soma/AdType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Text Ad Click Url : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/smaato/soma/internal/e/a$5;->a:Lcom/smaato/soma/p;

    invoke-interface {v2}, Lcom/smaato/soma/p;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 406
    :goto_0
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    const-string v0, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/smaato/soma/internal/e/a$5;->d:Lcom/smaato/soma/internal/e/a;

    invoke-virtual {v2}, Lcom/smaato/soma/internal/e/a;->getScreenShotUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 408
    const-string v0, "plain/text"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    iget-object v0, p0, Lcom/smaato/soma/internal/e/a$5;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 410
    const/4 v0, 0x0

    return-object v0

    .line 400
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Rich Media Tag : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/smaato/soma/internal/e/a$5;->a:Lcom/smaato/soma/p;

    invoke-interface {v2}, Lcom/smaato/soma/p;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 398
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/smaato/soma/internal/e/a$5;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
