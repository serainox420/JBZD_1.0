.class Lcom/smaato/soma/video/VASTAdActivity$2;
.super Lcom/smaato/soma/l;
.source "VASTAdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/video/VASTAdActivity;->c()V
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
.field final synthetic a:Lcom/smaato/soma/video/VASTAdActivity;


# direct methods
.method constructor <init>(Lcom/smaato/soma/video/VASTAdActivity;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/smaato/soma/video/VASTAdActivity$2;->a:Lcom/smaato/soma/video/VASTAdActivity;

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
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 145
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$2;->a:Lcom/smaato/soma/video/VASTAdActivity;

    iget-object v0, v0, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v0}, Lcom/smaato/soma/video/c;->getVastAd()Lcom/smaato/soma/internal/d/c;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lcom/smaato/soma/internal/d/c;->a()Lcom/smaato/soma/internal/d/a;

    move-result-object v7

    .line 147
    if-nez v7, :cond_0

    .line 227
    :goto_0
    return-object v1

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$2;->a:Lcom/smaato/soma/video/VASTAdActivity;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/smaato/soma/video/VASTAdActivity;->f:Z

    .line 154
    invoke-virtual {v7}, Lcom/smaato/soma/internal/d/a;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 155
    new-instance v2, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$2;->a:Lcom/smaato/soma/video/VASTAdActivity;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 156
    invoke-static {}, Lcom/smaato/soma/b/a;->a()Lcom/smaato/soma/b/a;

    move-result-object v0

    .line 157
    invoke-virtual {v7}, Lcom/smaato/soma/internal/d/a;->c()Ljava/lang/String;

    move-result-object v3

    .line 158
    invoke-virtual {v7}, Lcom/smaato/soma/internal/d/a;->a()I

    move-result v4

    .line 159
    invoke-virtual {v7}, Lcom/smaato/soma/internal/d/a;->b()I

    move-result v5

    .line 157
    invoke-virtual {v0, v3, v4, v5}, Lcom/smaato/soma/b/a;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v2

    .line 160
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 162
    new-instance v0, Lcom/smaato/soma/video/VASTAdActivity$2$1;

    invoke-direct {v0, p0, v7}, Lcom/smaato/soma/video/VASTAdActivity$2$1;-><init>(Lcom/smaato/soma/video/VASTAdActivity$2;Lcom/smaato/soma/internal/d/a;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    :goto_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/smaato/soma/internal/c/d;->a()Lcom/smaato/soma/internal/c/d;

    move-result-object v3

    iget-object v4, p0, Lcom/smaato/soma/video/VASTAdActivity$2;->a:Lcom/smaato/soma/video/VASTAdActivity;

    .line 219
    invoke-virtual {v4}, Lcom/smaato/soma/video/VASTAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 220
    invoke-virtual {v7}, Lcom/smaato/soma/internal/d/a;->a()I

    move-result v5

    .line 219
    invoke-virtual {v3, v4, v5}, Lcom/smaato/soma/internal/c/d;->a(Landroid/content/Context;I)I

    move-result v3

    .line 221
    invoke-static {}, Lcom/smaato/soma/internal/c/d;->a()Lcom/smaato/soma/internal/c/d;

    move-result-object v4

    iget-object v5, p0, Lcom/smaato/soma/video/VASTAdActivity$2;->a:Lcom/smaato/soma/video/VASTAdActivity;

    .line 222
    invoke-virtual {v5}, Lcom/smaato/soma/video/VASTAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 223
    invoke-virtual {v7}, Lcom/smaato/soma/internal/d/a;->b()I

    move-result v6

    .line 222
    invoke-virtual {v4, v5, v6}, Lcom/smaato/soma/internal/c/d;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 224
    const/16 v3, 0xd

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 225
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    iget-object v3, p0, Lcom/smaato/soma/video/VASTAdActivity$2;->a:Lcom/smaato/soma/video/VASTAdActivity;

    iget-object v3, v3, Lcom/smaato/soma/video/VASTAdActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {v7}, Lcom/smaato/soma/internal/d/a;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 177
    new-instance v6, Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$2;->a:Lcom/smaato/soma/video/VASTAdActivity;

    invoke-direct {v6, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 178
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 179
    const-string v0, "<html>\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    const-string v0, "    <head>\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    const-string v0, "        <META name=\"viewport\" content=\"user-scalable=no\" />\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    const-string v0, "        <style type=\"text/css\"> * {   margin: 0px;   padding: 0px;}</style>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    const-string v0, "    </head>\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    const-string v0, "<body align=\"center\" onClick=\"smaato_bridge.legacyExpand();\">\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    const-string v0, "    <div id=\"ad-container\">"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    invoke-virtual {v7}, Lcom/smaato/soma/internal/d/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    const-string v0, "    </div>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    const-string v0, "</body>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    const-string v0, "</html>\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v0, v6

    .line 190
    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    move-object v0, v6

    .line 191
    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    move-object v0, v6

    .line 192
    check-cast v0, Landroid/webkit/WebView;

    .line 193
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    .line 192
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 198
    check-cast v0, Landroid/webkit/WebView;

    new-instance v2, Lcom/smaato/soma/video/VASTAdActivity$2$2;

    invoke-direct {v2, p0, v7}, Lcom/smaato/soma/video/VASTAdActivity$2$2;-><init>(Lcom/smaato/soma/video/VASTAdActivity$2;Lcom/smaato/soma/internal/d/a;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object v2, v6

    goto/16 :goto_1

    :cond_2
    move-object v2, v1

    goto/16 :goto_1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/smaato/soma/video/VASTAdActivity$2;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
