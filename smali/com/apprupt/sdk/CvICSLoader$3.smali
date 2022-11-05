.class Lcom/apprupt/sdk/CvICSLoader$3;
.super Ljava/lang/Object;
.source "CvICSLoader.java"

# interfaces
.implements Lcom/apprupt/sdk/URLRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvICSLoader;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvICSLoader;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvICSLoader;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/apprupt/sdk/CvICSLoader$3;->a:Lcom/apprupt/sdk/CvICSLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/apprupt/sdk/URLRequest$URLResponse;)V
    .locals 4

    .prologue
    .line 159
    iget-boolean v0, p1, Lcom/apprupt/sdk/URLRequest$URLResponse;->d:Z

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/apprupt/sdk/CvICSLoader$3;->a:Lcom/apprupt/sdk/CvICSLoader;

    sget-object v1, Lcom/apprupt/sdk/CvLocale;->g:Lcom/apprupt/sdk/CvLocale;

    invoke-virtual {v1}, Lcom/apprupt/sdk/CvLocale;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvICSLoader;->a(Lcom/apprupt/sdk/CvICSLoader;Ljava/lang/String;)V

    .line 169
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvICSLoader$3;->a:Lcom/apprupt/sdk/CvICSLoader;

    iget-object v1, p1, Lcom/apprupt/sdk/URLRequest$URLResponse;->c:Ljava/lang/String;

    const-string v2, "\\r"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvICSLoader;->a(Lcom/apprupt/sdk/CvICSLoader;[Ljava/lang/String;)[Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/apprupt/sdk/CvICSLoader$3;->a:Lcom/apprupt/sdk/CvICSLoader;

    invoke-static {v0}, Lcom/apprupt/sdk/CvICSLoader;->c(Lcom/apprupt/sdk/CvICSLoader;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/apprupt/sdk/CvICSLoader$3$1;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/CvICSLoader$3$1;-><init>(Lcom/apprupt/sdk/CvICSLoader$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
