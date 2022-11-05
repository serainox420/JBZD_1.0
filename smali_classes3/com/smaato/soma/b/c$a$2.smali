.class Lcom/smaato/soma/b/c$a$2;
.super Lcom/smaato/soma/l;
.source "ToasterLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/b/c$a;->handleMessage(Landroid/os/Message;)V
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
.field final synthetic a:Landroid/os/Message;

.field final synthetic b:Lcom/smaato/soma/b/c$a;


# direct methods
.method constructor <init>(Lcom/smaato/soma/b/c$a;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/smaato/soma/b/c$a$2;->b:Lcom/smaato/soma/b/c$a;

    iput-object p2, p0, Lcom/smaato/soma/b/c$a$2;->a:Landroid/os/Message;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 123
    iget-object v0, p0, Lcom/smaato/soma/b/c$a$2;->b:Lcom/smaato/soma/b/c$a;

    invoke-virtual {v0}, Lcom/smaato/soma/b/c$a;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/j;

    .line 124
    if-nez v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-object v7

    .line 128
    :cond_1
    new-instance v1, Lcom/smaato/soma/debug/b;

    const-string v2, "Toaster_Layout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage() with"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/smaato/soma/b/c$a$2;->a:Landroid/os/Message;

    iget v4, v4, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v1}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 133
    iget-object v1, p0, Lcom/smaato/soma/b/c$a$2;->a:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->what:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_2

    .line 134
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getBannerState()Lcom/smaato/soma/internal/statemachine/BannerState;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Lcom/smaato/soma/internal/statemachine/BannerState;->b()Z

    .line 138
    invoke-static {}, Lcom/smaato/soma/bannerutilities/b;->a()Lcom/smaato/soma/bannerutilities/b;

    move-result-object v1

    iget-object v2, p0, Lcom/smaato/soma/b/c$a$2;->b:Lcom/smaato/soma/b/c$a;

    iget-object v2, v2, Lcom/smaato/soma/b/c$a;->a:Lcom/smaato/soma/b/c;

    invoke-static {v2}, Lcom/smaato/soma/b/c;->a(Lcom/smaato/soma/b/c;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/smaato/soma/bannerutilities/b;->a(Lcom/smaato/soma/bannerutilities/a;Lcom/smaato/soma/j;)V

    .line 140
    iget-object v0, p0, Lcom/smaato/soma/b/c$a$2;->b:Lcom/smaato/soma/b/c$a;

    iget-object v0, v0, Lcom/smaato/soma/b/c$a;->a:Lcom/smaato/soma/b/c;

    iget-object v0, v0, Lcom/smaato/soma/b/c;->a:Lcom/smaato/soma/s;

    invoke-virtual {v0}, Lcom/smaato/soma/s;->b()V

    .line 142
    iget-object v0, p0, Lcom/smaato/soma/b/c$a$2;->b:Lcom/smaato/soma/b/c$a;

    iget-object v0, v0, Lcom/smaato/soma/b/c$a;->a:Lcom/smaato/soma/b/c;

    invoke-static {v0}, Lcom/smaato/soma/b/c;->b(Lcom/smaato/soma/b/c;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/smaato/soma/bannerutilities/a;->a(Z)V

    .line 144
    iget-object v0, p0, Lcom/smaato/soma/b/c$a$2;->b:Lcom/smaato/soma/b/c$a;

    iget-object v0, v0, Lcom/smaato/soma/b/c$a;->a:Lcom/smaato/soma/b/c;

    invoke-static {v0}, Lcom/smaato/soma/b/c;->c(Lcom/smaato/soma/b/c;)V

    goto :goto_0

    .line 146
    :cond_2
    iget-object v1, p0, Lcom/smaato/soma/b/c$a$2;->a:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->what:I

    const/16 v2, 0x6b

    if-ne v1, v2, :cond_4

    .line 149
    :try_start_0
    invoke-static {}, Lcom/smaato/soma/bannerutilities/b;->a()Lcom/smaato/soma/bannerutilities/b;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smaato/soma/bannerutilities/b;->a(Z)V

    .line 150
    iget-object v1, p0, Lcom/smaato/soma/b/c$a$2;->b:Lcom/smaato/soma/b/c$a;

    iget-object v1, v1, Lcom/smaato/soma/b/c$a;->a:Lcom/smaato/soma/b/c;

    invoke-static {v1}, Lcom/smaato/soma/b/c;->d(Lcom/smaato/soma/b/c;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/bannerutilities/a;->a()Z

    move-result v1

    if-nez v1, :cond_3

    .line 151
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getBannerState()Lcom/smaato/soma/internal/statemachine/BannerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/statemachine/BannerState;->d()Z

    .line 156
    :goto_1
    iget-object v0, p0, Lcom/smaato/soma/b/c$a$2;->b:Lcom/smaato/soma/b/c$a;

    iget-object v0, v0, Lcom/smaato/soma/b/c$a;->a:Lcom/smaato/soma/b/c;

    invoke-static {v0}, Lcom/smaato/soma/b/c;->e(Lcom/smaato/soma/b/c;)V

    .line 157
    iget-object v0, p0, Lcom/smaato/soma/b/c$a$2;->b:Lcom/smaato/soma/b/c$a;

    iget-object v0, v0, Lcom/smaato/soma/b/c$a;->a:Lcom/smaato/soma/b/c;

    invoke-static {v0}, Lcom/smaato/soma/b/c;->f(Lcom/smaato/soma/b/c;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smaato/soma/bannerutilities/a;->a(Z)V

    goto/16 :goto_0

    .line 158
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 154
    :cond_3
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getBannerState()Lcom/smaato/soma/internal/statemachine/BannerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/statemachine/BannerState;->c()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 160
    :cond_4
    iget-object v1, p0, Lcom/smaato/soma/b/c$a$2;->a:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->what:I

    const/16 v2, 0x66

    if-ne v1, v2, :cond_6

    .line 162
    iget-object v1, p0, Lcom/smaato/soma/b/c$a$2;->b:Lcom/smaato/soma/b/c$a;

    iget-object v1, v1, Lcom/smaato/soma/b/c$a;->a:Lcom/smaato/soma/b/c;

    invoke-static {v1}, Lcom/smaato/soma/b/c;->g(Lcom/smaato/soma/b/c;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/bannerutilities/a;->a()Z

    move-result v1

    if-nez v1, :cond_5

    .line 163
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getBannerState()Lcom/smaato/soma/internal/statemachine/BannerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/statemachine/BannerState;->d()Z

    .line 169
    :goto_2
    iget-object v0, p0, Lcom/smaato/soma/b/c$a$2;->b:Lcom/smaato/soma/b/c$a;

    iget-object v0, v0, Lcom/smaato/soma/b/c$a;->a:Lcom/smaato/soma/b/c;

    invoke-static {v0}, Lcom/smaato/soma/b/c;->h(Lcom/smaato/soma/b/c;)V

    goto/16 :goto_0

    .line 166
    :cond_5
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getBannerState()Lcom/smaato/soma/internal/statemachine/BannerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/statemachine/BannerState;->c()Z

    goto :goto_2

    .line 170
    :cond_6
    iget-object v1, p0, Lcom/smaato/soma/b/c$a$2;->a:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->what:I

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_0

    .line 172
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getBannerState()Lcom/smaato/soma/internal/statemachine/BannerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/statemachine/BannerState;->c()Z

    .line 174
    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/smaato/soma/b/c$a$2;->b:Lcom/smaato/soma/b/c$a;

    iget-object v0, v0, Lcom/smaato/soma/b/c$a;->a:Lcom/smaato/soma/b/c;

    invoke-static {v0}, Lcom/smaato/soma/b/c;->i(Lcom/smaato/soma/b/c;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->e()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 179
    :try_start_1
    iget-object v0, p0, Lcom/smaato/soma/b/c$a$2;->b:Lcom/smaato/soma/b/c$a;

    iget-object v0, v0, Lcom/smaato/soma/b/c$a;->a:Lcom/smaato/soma/b/c;

    invoke-static {v0}, Lcom/smaato/soma/b/c;->j(Lcom/smaato/soma/b/c;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->b()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/ExpandedBannerActivity;

    invoke-virtual {v0}, Lcom/smaato/soma/ExpandedBannerActivity;->finish()V

    .line 181
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 182
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 183
    iget-object v1, p0, Lcom/smaato/soma/b/c$a$2;->b:Lcom/smaato/soma/b/c$a;

    iget-object v1, v1, Lcom/smaato/soma/b/c$a;->a:Lcom/smaato/soma/b/c;

    invoke-virtual {v1}, Lcom/smaato/soma/b/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 186
    :catch_1
    move-exception v0

    .line 187
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "Toaster_Layout"

    const-string v2, "Please declare com.smaato.soma.ExpandedBannerActivity in your AndroidManifest.xml"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto/16 :goto_0

    .line 191
    :catch_2
    move-exception v0

    .line 192
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "Toaster_Layout"

    const-string v2, "Exception inside Internal Browser"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto/16 :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/smaato/soma/b/c$a$2;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
