.class public Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;
.super Lcom/smartadserver/android/library/model/SASAdElement;
.source "SASNativeParallaxAdElement.java"


# static fields
.field public static final IMAGE_RESIZE_MODE_100_PERCENT:I = 0x2

.field public static final IMAGE_RESIZE_MODE_CONTAIN:I = 0x1

.field public static final IMAGE_RESIZE_MODE_COVER:I = 0x0

.field public static final PARALLAX_MODE_DYNAMIC_HEIGHT:I = 0x1

.field public static final PARALLAX_MODE_FIXED:I = 0x0

.field public static final PARALLAX_MODE_STICKY_BOTTOM:I = 0x3

.field public static final PARALLAX_MODE_STICKY_TOP:I = 0x2


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/smartadserver/android/library/model/SASAdElement;-><init>()V

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Lcom/smartadserver/android/library/model/SASAdElement;-><init>()V

    .line 69
    if-eqz p1, :cond_0

    .line 70
    const-string v0, "bordersEnabled"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->i:Z

    .line 71
    const-string v0, "imageUrl"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->a:Ljava/lang/String;

    .line 72
    const-string v0, "scriptUrl"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->b:Ljava/lang/String;

    .line 73
    const-string v0, "html"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->c:Ljava/lang/String;

    .line 74
    const-string v0, "parallaxMode"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->d:I

    .line 75
    const-string v0, "resizeMode"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->e:I

    .line 76
    const-string v0, "backgroundColor"

    const-string v3, "000000"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->f:I

    .line 78
    const-string v0, "borderHeight"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->j:I

    .line 79
    const-string v0, "borderFontSize"

    const/16 v3, 0xc

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->k:I

    .line 80
    const-string v0, "borderColor"

    const-string v3, "000000"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->l:I

    .line 82
    const-string v0, "borderFontColor"

    const-string v3, "FFFFFF"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->m:I

    .line 84
    const-string v0, "borderText"

    const-string v3, ""

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->n:Ljava/lang/String;

    .line 85
    const-string v0, "creativeWidth"

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->g:I

    .line 86
    const-string v0, "creativeHeight"

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->h:I

    .line 87
    const-string v0, "enableParallaxJSAPI"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->o:Z

    .line 89
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 70
    goto/16 :goto_0

    :cond_2
    move v1, v2

    .line 87
    goto :goto_1
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    const-string v0, "Native Parallax"

    .line 222
    invoke-virtual {p0}, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->getParallaxImageUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Image"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    :cond_0
    :goto_0
    return-object v0

    .line 224
    :cond_1
    invoke-virtual {p0}, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->getParallaxHTMLScript()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->getParallaxHTMLUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 225
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HTML"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->f:I

    return v0
.end method

.method public getBorderColor()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->l:I

    return v0
.end method

.method public getBorderFontColor()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->m:I

    return v0
.end method

.method public getBorderFontSize()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->k:I

    return v0
.end method

.method public getBorderSize()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->j:I

    return v0
.end method

.method public getBorderText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getCreativeHeight()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->h:I

    return v0
.end method

.method public getCreativeWidth()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->g:I

    return v0
.end method

.method public getParallaxHTMLScript()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getParallaxHTMLUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getParallaxImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getParallaxMode()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->d:I

    return v0
.end method

.method public getResizeMode()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->e:I

    return v0
.end method

.method public isBorderEnabled()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->i:Z

    return v0
.end method

.method public isJavascriptAPIEnabled()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->o:Z

    return v0
.end method

.method public isOpenClickInApplication()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .prologue
    .line 144
    iput p1, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->f:I

    .line 145
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0

    .prologue
    .line 193
    iput p1, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->l:I

    .line 194
    return-void
.end method

.method public setBorderEnabled(Z)V
    .locals 0

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->i:Z

    .line 170
    return-void
.end method

.method public setBorderFontColor(I)V
    .locals 0

    .prologue
    .line 201
    iput p1, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->m:I

    .line 202
    return-void
.end method

.method public setBorderFontSize(I)V
    .locals 0

    .prologue
    .line 185
    iput p1, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->k:I

    .line 186
    return-void
.end method

.method public setBorderSize(I)V
    .locals 0

    .prologue
    .line 177
    iput p1, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->j:I

    .line 178
    return-void
.end method

.method public setBorderText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->n:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setCreativeHeight(I)V
    .locals 0

    .prologue
    .line 153
    iput p1, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->h:I

    .line 154
    return-void
.end method

.method public setCreativeWidth(I)V
    .locals 0

    .prologue
    .line 161
    iput p1, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->g:I

    .line 162
    return-void
.end method

.method public setJavascriptAPIEnabled(Z)V
    .locals 0

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->o:Z

    .line 218
    return-void
.end method

.method public setParallaxHTMLScript(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->c:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setParallaxHTMLUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->b:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setParallaxImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->a:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setParallaxMode(I)V
    .locals 0

    .prologue
    .line 128
    iput p1, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->d:I

    .line 129
    return-void
.end method

.method public setResizeMode(I)V
    .locals 0

    .prologue
    .line 136
    iput p1, p0, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->e:I

    .line 137
    return-void
.end method
