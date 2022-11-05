.class Lcom/apprupt/sdk/CvConfig$12;
.super Ljava/lang/Object;
.source "CvConfig.java"

# interfaces
.implements Lcom/apprupt/sdk/Q$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/CvConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvConfig;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvConfig;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/apprupt/sdk/CvConfig$12;->a:Lcom/apprupt/sdk/CvConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/apprupt/sdk/Q$Resolver;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$12;->a:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v0}, Lcom/apprupt/sdk/CvConfig;->h(Lcom/apprupt/sdk/CvConfig;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/apprupt/sdk/CvConfig$12;->a:Lcom/apprupt/sdk/CvConfig;

    invoke-virtual {v1}, Lcom/apprupt/sdk/CvConfig;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    :goto_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 272
    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 275
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/apprupt/sdk/Q$Resolver;->a(Ljava/lang/Object;)V

    .line 276
    return-void
.end method
