.class Lcom/smaato/soma/video/VASTAdActivity$3$1;
.super Ljava/lang/Object;
.source "VASTAdActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/video/VASTAdActivity$3;->a()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/video/VASTAdActivity$3;


# direct methods
.method constructor <init>(Lcom/smaato/soma/video/VASTAdActivity$3;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/smaato/soma/video/VASTAdActivity$3$1;->a:Lcom/smaato/soma/video/VASTAdActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 294
    new-instance v0, Lcom/smaato/soma/debug/b;

    sget-object v1, Lcom/smaato/soma/video/VASTAdActivity;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/smaato/soma/video/VASTAdActivity;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "timed out to fill Ad."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 300
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$3$1;->a:Lcom/smaato/soma/video/VASTAdActivity$3;

    iget-object v0, v0, Lcom/smaato/soma/video/VASTAdActivity$3;->a:Lcom/smaato/soma/video/VASTAdActivity;

    invoke-virtual {v0}, Lcom/smaato/soma/video/VASTAdActivity;->e()V

    .line 302
    return-void
.end method
