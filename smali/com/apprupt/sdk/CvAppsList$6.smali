.class Lcom/apprupt/sdk/CvAppsList$6;
.super Ljava/lang/Object;
.source "CvAppsList.java"

# interfaces
.implements Lcom/apprupt/sdk/CvAppsList$MultiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvAppsList;->a(Ljava/lang/String;Lcom/apprupt/sdk/CvAppsList$AppInfoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/apprupt/sdk/CvAppsList$AppInfoListener;

.field final synthetic c:Lcom/apprupt/sdk/CvAppsList;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvAppsList;Ljava/lang/String;Lcom/apprupt/sdk/CvAppsList$AppInfoListener;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/apprupt/sdk/CvAppsList$6;->c:Lcom/apprupt/sdk/CvAppsList;

    iput-object p2, p0, Lcom/apprupt/sdk/CvAppsList$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/apprupt/sdk/CvAppsList$6;->b:Lcom/apprupt/sdk/CvAppsList$AppInfoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppsList$6;->c:Lcom/apprupt/sdk/CvAppsList;

    invoke-static {v0}, Lcom/apprupt/sdk/CvAppsList;->c(Lcom/apprupt/sdk/CvAppsList;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/CvAppsList$6;->c:Lcom/apprupt/sdk/CvAppsList;

    invoke-static {v0}, Lcom/apprupt/sdk/CvAppsList;->c(Lcom/apprupt/sdk/CvAppsList;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/apprupt/sdk/CvAppsList$6;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v1, p0, Lcom/apprupt/sdk/CvAppsList$6;->b:Lcom/apprupt/sdk/CvAppsList$AppInfoListener;

    iget-object v0, p0, Lcom/apprupt/sdk/CvAppsList$6;->c:Lcom/apprupt/sdk/CvAppsList;

    invoke-static {v0}, Lcom/apprupt/sdk/CvAppsList;->c(Lcom/apprupt/sdk/CvAppsList;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/apprupt/sdk/CvAppsList$6;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-interface {v1, v0}, Lcom/apprupt/sdk/CvAppsList$AppInfoListener;->a(Lorg/json/JSONObject;)V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppsList$6;->b:Lcom/apprupt/sdk/CvAppsList$AppInfoListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/CvAppsList$AppInfoListener;->a(Lorg/json/JSONObject;)V

    goto :goto_0
.end method
