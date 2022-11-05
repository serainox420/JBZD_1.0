.class Lcom/smartadserver/android/library/ui/a$3$1;
.super Landroid/webkit/WebViewClient;
.source "SASNativeVideoLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/a$3;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/a$3;)V
    .locals 0

    .prologue
    .line 1178
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$3$1;->a:Lcom/smartadserver/android/library/ui/a$3;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1181
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1183
    const-string v0, "http://diffdev44.smartadserver.com/diff/templates/js/mobile/sdk/sas-vpaid-resources/outstream-wrapper.1.0.html"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://ak-ns.sascdn.com/diff/templates/js/mobile/sdk/sas-vpaid-resources/outstream-wrapper.1.0.html"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1184
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$3$1;->a:Lcom/smartadserver/android/library/ui/a$3;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$3;->b:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->q(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getAdParameters()Ljava/lang/String;

    move-result-object v0

    .line 1185
    if-nez v0, :cond_1

    .line 1186
    const-string v0, ""

    .line 1188
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadPlayer({params:\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', url:\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$3$1;->a:Lcom/smartadserver/android/library/ui/a$3;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/a$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1189
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$3$1;->a:Lcom/smartadserver/android/library/ui/a$3;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/a$3;->b:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/a;->n(Lcom/smartadserver/android/library/ui/a;)Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/smartadserver/android/library/g/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1191
    :cond_2
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 1194
    invoke-static {}, Lcom/smartadserver/android/library/ui/a;->j()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldOverrideUrlLoading from VPAID WebView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$3$1;->a:Lcom/smartadserver/android/library/ui/a$3;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$3;->b:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v0, p2}, Lcom/smartadserver/android/library/ui/a;->a(Ljava/lang/String;)V

    .line 1196
    const/4 v0, 0x1

    return v0
.end method
