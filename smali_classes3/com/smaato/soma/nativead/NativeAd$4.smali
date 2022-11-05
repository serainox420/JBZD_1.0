.class Lcom/smaato/soma/nativead/NativeAd$4;
.super Lcom/smaato/soma/l;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/nativead/NativeAd;->onReceiveAd(Lcom/smaato/soma/b;Lcom/smaato/soma/p;)V
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

.field final synthetic b:Lcom/smaato/soma/b;

.field final synthetic c:Lcom/smaato/soma/nativead/NativeAd;


# direct methods
.method constructor <init>(Lcom/smaato/soma/nativead/NativeAd;Lcom/smaato/soma/p;Lcom/smaato/soma/b;)V
    .locals 0

    .prologue
    .line 1177
    iput-object p1, p0, Lcom/smaato/soma/nativead/NativeAd$4;->c:Lcom/smaato/soma/nativead/NativeAd;

    iput-object p2, p0, Lcom/smaato/soma/nativead/NativeAd$4;->a:Lcom/smaato/soma/p;

    iput-object p3, p0, Lcom/smaato/soma/nativead/NativeAd$4;->b:Lcom/smaato/soma/b;

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
    const/4 v5, 0x0

    .line 1181
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd$4;->a:Lcom/smaato/soma/p;

    if-nez v0, :cond_1

    .line 1222
    :cond_0
    :goto_0
    return-object v5

    .line 1185
    :cond_1
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd$4;->c:Lcom/smaato/soma/nativead/NativeAd;

    invoke-static {v0, v5}, Lcom/smaato/soma/nativead/NativeAd;->a(Lcom/smaato/soma/nativead/NativeAd;Ljava/util/Vector;)Ljava/util/Vector;

    .line 1186
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd$4;->c:Lcom/smaato/soma/nativead/NativeAd;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-static {v0, v1}, Lcom/smaato/soma/nativead/NativeAd;->a(Lcom/smaato/soma/nativead/NativeAd;Ljava/util/Vector;)Ljava/util/Vector;

    .line 1187
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd$4;->a:Lcom/smaato/soma/p;

    invoke-interface {v0}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd$4;->a:Lcom/smaato/soma/p;

    invoke-interface {v0}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/b/a;->i()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1188
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd$4;->c:Lcom/smaato/soma/nativead/NativeAd;

    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd$4;->a:Lcom/smaato/soma/p;

    invoke-interface {v1}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/internal/b/a;->i()Ljava/util/Vector;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smaato/soma/nativead/NativeAd;->a(Lcom/smaato/soma/nativead/NativeAd;Ljava/util/Vector;)Ljava/util/Vector;

    .line 1192
    :cond_2
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd$4;->c:Lcom/smaato/soma/nativead/NativeAd;

    invoke-static {v0}, Lcom/smaato/soma/nativead/NativeAd;->b(Lcom/smaato/soma/nativead/NativeAd;)Lcom/smaato/soma/c;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1193
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd$4;->c:Lcom/smaato/soma/nativead/NativeAd;

    invoke-static {v0}, Lcom/smaato/soma/nativead/NativeAd;->b(Lcom/smaato/soma/nativead/NativeAd;)Lcom/smaato/soma/c;

    move-result-object v0

    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd$4;->b:Lcom/smaato/soma/b;

    iget-object v2, p0, Lcom/smaato/soma/nativead/NativeAd$4;->a:Lcom/smaato/soma/p;

    invoke-interface {v0, v1, v2}, Lcom/smaato/soma/c;->onReceiveAd(Lcom/smaato/soma/b;Lcom/smaato/soma/p;)V

    .line 1195
    :cond_3
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd$4;->a:Lcom/smaato/soma/p;

    invoke-interface {v0}, Lcom/smaato/soma/p;->k()Lcom/smaato/soma/ErrorCode;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/ErrorCode;->NO_ERROR:Lcom/smaato/soma/ErrorCode;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd$4;->a:Lcom/smaato/soma/p;

    invoke-interface {v0}, Lcom/smaato/soma/p;->d()Lcom/smaato/soma/AdType;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/AdType;->NATIVE:Lcom/smaato/soma/AdType;

    if-ne v0, v1, :cond_6

    .line 1198
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd$4;->c:Lcom/smaato/soma/nativead/NativeAd;

    invoke-static {v0}, Lcom/smaato/soma/nativead/NativeAd;->c(Lcom/smaato/soma/nativead/NativeAd;)Lcom/smaato/soma/nativead/NativeAd$NativeType;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd$4;->c:Lcom/smaato/soma/nativead/NativeAd;

    invoke-static {v0}, Lcom/smaato/soma/nativead/NativeAd;->c(Lcom/smaato/soma/nativead/NativeAd;)Lcom/smaato/soma/nativead/NativeAd$NativeType;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/nativead/NativeAd$NativeType;->ALL:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    invoke-virtual {v0, v1}, Lcom/smaato/soma/nativead/NativeAd$NativeType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1199
    :cond_4
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd$4;->c:Lcom/smaato/soma/nativead/NativeAd;

    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd$4;->a:Lcom/smaato/soma/p;

    invoke-virtual {v0, v1}, Lcom/smaato/soma/nativead/NativeAd;->a(Lcom/smaato/soma/p;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1206
    :goto_1
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "NATIVE"

    const-string v2, "Ad available"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 1217
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd$4;->c:Lcom/smaato/soma/nativead/NativeAd;

    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd$4;->a:Lcom/smaato/soma/p;

    invoke-virtual {v0, v1}, Lcom/smaato/soma/nativead/NativeAd;->c(Lcom/smaato/soma/p;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd$4;->c:Lcom/smaato/soma/nativead/NativeAd;

    invoke-virtual {v0}, Lcom/smaato/soma/nativead/NativeAd;->a()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1218
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd$4;->a:Lcom/smaato/soma/p;

    invoke-interface {v0}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/b/a;->j()Lcom/facebook/ads/NativeAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->unregisterView()V

    .line 1219
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd$4;->a:Lcom/smaato/soma/p;

    invoke-interface {v0}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/b/a;->j()Lcom/facebook/ads/NativeAd;

    move-result-object v0

    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd$4;->c:Lcom/smaato/soma/nativead/NativeAd;

    invoke-virtual {v1}, Lcom/smaato/soma/nativead/NativeAd;->a()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1202
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd$4;->c:Lcom/smaato/soma/nativead/NativeAd;

    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd$4;->a:Lcom/smaato/soma/p;

    invoke-static {v0, v1}, Lcom/smaato/soma/nativead/NativeAd;->a(Lcom/smaato/soma/nativead/NativeAd;Lcom/smaato/soma/p;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1204
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1211
    :cond_6
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd$4;->c:Lcom/smaato/soma/nativead/NativeAd;

    invoke-static {v0}, Lcom/smaato/soma/nativead/NativeAd;->d(Lcom/smaato/soma/nativead/NativeAd;)Lcom/smaato/soma/nativead/NativeAd$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd$4;->c:Lcom/smaato/soma/nativead/NativeAd;

    invoke-static {v0}, Lcom/smaato/soma/nativead/NativeAd;->d(Lcom/smaato/soma/nativead/NativeAd;)Lcom/smaato/soma/nativead/NativeAd$d;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/ErrorCode;->GENERAL_ERROR:Lcom/smaato/soma/ErrorCode;

    sget-object v2, Lcom/smaato/soma/ErrorCode;->GENERAL_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-static {v2}, Lcom/smaato/soma/ErrorCode;->getStringForValue(Lcom/smaato/soma/ErrorCode;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/smaato/soma/nativead/NativeAd$d;->a(Lcom/smaato/soma/ErrorCode;Ljava/lang/String;)V

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
    .line 1177
    invoke-virtual {p0}, Lcom/smaato/soma/nativead/NativeAd$4;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
