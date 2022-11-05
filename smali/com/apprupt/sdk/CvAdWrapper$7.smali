.class Lcom/apprupt/sdk/CvAdWrapper$7;
.super Ljava/lang/Object;
.source "CvAdWrapper.java"

# interfaces
.implements Lcom/apprupt/sdk/Q$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/CvAdWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvAdWrapper;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvAdWrapper;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/apprupt/sdk/CvAdWrapper$7;->a:Lcom/apprupt/sdk/CvAdWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/apprupt/sdk/Q$Resolver;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x7530

    const-wide/16 v6, 0x0

    .line 183
    check-cast p1, Lcom/apprupt/sdk/SimpleJSON;

    .line 184
    const-string v0, "closeButtonTimeout"

    invoke-virtual {p1, v0}, Lcom/apprupt/sdk/SimpleJSON;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper$7;->a:Lcom/apprupt/sdk/CvAdWrapper;

    const-string v1, "closeButtonTimeout"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/apprupt/sdk/SimpleJSON;->c(Ljava/lang/String;Ljava/lang/Number;)D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/apprupt/sdk/CvAdWrapper;->a(Lcom/apprupt/sdk/CvAdWrapper;J)J

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper$7;->a:Lcom/apprupt/sdk/CvAdWrapper;

    invoke-static {v0}, Lcom/apprupt/sdk/CvAdWrapper;->c(Lcom/apprupt/sdk/CvAdWrapper;)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-gez v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper$7;->a:Lcom/apprupt/sdk/CvAdWrapper;

    invoke-static {v0, v6, v7}, Lcom/apprupt/sdk/CvAdWrapper;->a(Lcom/apprupt/sdk/CvAdWrapper;J)J

    .line 192
    :cond_1
    :goto_0
    invoke-interface {p2, p1}, Lcom/apprupt/sdk/Q$Resolver;->a(Ljava/lang/Object;)V

    .line 193
    return-void

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper$7;->a:Lcom/apprupt/sdk/CvAdWrapper;

    invoke-static {v0}, Lcom/apprupt/sdk/CvAdWrapper;->c(Lcom/apprupt/sdk/CvAdWrapper;)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-lez v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper$7;->a:Lcom/apprupt/sdk/CvAdWrapper;

    invoke-static {v0, v8, v9}, Lcom/apprupt/sdk/CvAdWrapper;->a(Lcom/apprupt/sdk/CvAdWrapper;J)J

    goto :goto_0
.end method
