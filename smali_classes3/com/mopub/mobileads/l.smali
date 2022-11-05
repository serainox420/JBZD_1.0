.class Lcom/mopub/mobileads/l;
.super Ljava/lang/Object;
.source "VastResource.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/l$1;,
        Lcom/mopub/mobileads/l$a;,
        Lcom/mopub/mobileads/l$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Ljava/lang/String;

.field private d:Lcom/mopub/mobileads/l$b;

.field private e:Lcom/mopub/mobileads/l$a;

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "image/jpeg"

    aput-object v1, v0, v3

    const-string v1, "image/png"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "image/bmp"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "image/gif"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/l;->a:Ljava/util/List;

    .line 20
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "application/x-javascript"

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/l;->b:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/mopub/mobileads/l$b;Lcom/mopub/mobileads/l$a;II)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 124
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 125
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 127
    iput-object p1, p0, Lcom/mopub/mobileads/l;->c:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Lcom/mopub/mobileads/l;->d:Lcom/mopub/mobileads/l$b;

    .line 129
    iput-object p3, p0, Lcom/mopub/mobileads/l;->e:Lcom/mopub/mobileads/l$a;

    .line 130
    iput p4, p0, Lcom/mopub/mobileads/l;->f:I

    .line 131
    iput p5, p0, Lcom/mopub/mobileads/l;->g:I

    .line 132
    return-void
.end method

.method static a(Lcom/mopub/mobileads/VastResourceXmlManager;Lcom/mopub/mobileads/l$b;II)Lcom/mopub/mobileads/l;
    .locals 6

    .prologue
    .line 84
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 85
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastResourceXmlManager;->c()Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastResourceXmlManager;->d()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastResourceXmlManager;->a()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastResourceXmlManager;->b()Ljava/lang/String;

    move-result-object v3

    .line 95
    sget-object v4, Lcom/mopub/mobileads/l$b;->STATIC_RESOURCE:Lcom/mopub/mobileads/l$b;

    if-ne p1, v4, :cond_2

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    sget-object v4, Lcom/mopub/mobileads/l;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/mopub/mobileads/l;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 100
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/l;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    sget-object v3, Lcom/mopub/mobileads/l$a;->IMAGE:Lcom/mopub/mobileads/l$a;

    .line 115
    :goto_0
    new-instance v0, Lcom/mopub/mobileads/l;

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mopub/mobileads/l;-><init>(Ljava/lang/String;Lcom/mopub/mobileads/l$b;Lcom/mopub/mobileads/l$a;II)V

    :goto_1
    return-object v0

    .line 103
    :cond_1
    sget-object v3, Lcom/mopub/mobileads/l$a;->JAVASCRIPT:Lcom/mopub/mobileads/l$a;

    goto :goto_0

    .line 105
    :cond_2
    sget-object v1, Lcom/mopub/mobileads/l$b;->HTML_RESOURCE:Lcom/mopub/mobileads/l$b;

    if-ne p1, v1, :cond_3

    if-eqz v0, :cond_3

    .line 107
    sget-object v3, Lcom/mopub/mobileads/l$a;->NONE:Lcom/mopub/mobileads/l$a;

    move-object v1, v0

    goto :goto_0

    .line 108
    :cond_3
    sget-object v0, Lcom/mopub/mobileads/l$b;->IFRAME_RESOURCE:Lcom/mopub/mobileads/l$b;

    if-ne p1, v0, :cond_4

    if-eqz v2, :cond_4

    .line 110
    sget-object v3, Lcom/mopub/mobileads/l$a;->NONE:Lcom/mopub/mobileads/l$a;

    move-object v1, v2

    goto :goto_0

    .line 112
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getCorrectClickThroughUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 195
    sget-object v1, Lcom/mopub/mobileads/l$1;->a:[I

    iget-object v2, p0, Lcom/mopub/mobileads/l;->d:Lcom/mopub/mobileads/l$b;

    invoke-virtual {v2}, Lcom/mopub/mobileads/l$b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    move-object p2, v0

    .line 207
    :cond_0
    :goto_0
    :pswitch_0
    return-object p2

    .line 197
    :pswitch_1
    sget-object v1, Lcom/mopub/mobileads/l$a;->IMAGE:Lcom/mopub/mobileads/l$a;

    iget-object v2, p0, Lcom/mopub/mobileads/l;->e:Lcom/mopub/mobileads/l$a;

    if-ne v1, v2, :cond_1

    move-object p2, p1

    .line 198
    goto :goto_0

    .line 199
    :cond_1
    sget-object v1, Lcom/mopub/mobileads/l$a;->JAVASCRIPT:Lcom/mopub/mobileads/l$a;

    iget-object v2, p0, Lcom/mopub/mobileads/l;->e:Lcom/mopub/mobileads/l$a;

    if-eq v1, v2, :cond_0

    move-object p2, v0

    .line 202
    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getCreativeType()Lcom/mopub/mobileads/l$a;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/mopub/mobileads/l;->e:Lcom/mopub/mobileads/l$a;

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/mopub/mobileads/l;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/mopub/mobileads/l$b;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/mopub/mobileads/l;->d:Lcom/mopub/mobileads/l$b;

    return-object v0
.end method

.method public initializeWebView(Lcom/mopub/mobileads/m;)V
    .locals 2

    .prologue
    .line 155
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/mopub/mobileads/l;->d:Lcom/mopub/mobileads/l$b;

    sget-object v1, Lcom/mopub/mobileads/l$b;->IFRAME_RESOURCE:Lcom/mopub/mobileads/l$b;

    if-ne v0, v1, :cond_1

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<iframe frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" style=\"border: 0px; margin: 0px;\" width=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mopub/mobileads/l;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" height=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mopub/mobileads/l;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" src=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"></iframe>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/m;->a(Ljava/lang/String;)V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/l;->d:Lcom/mopub/mobileads/l$b;

    sget-object v1, Lcom/mopub/mobileads/l$b;->HTML_RESOURCE:Lcom/mopub/mobileads/l$b;

    if-ne v0, v1, :cond_2

    .line 162
    iget-object v0, p0, Lcom/mopub/mobileads/l;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/m;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/mopub/mobileads/l;->d:Lcom/mopub/mobileads/l$b;

    sget-object v1, Lcom/mopub/mobileads/l$b;->STATIC_RESOURCE:Lcom/mopub/mobileads/l$b;

    if-ne v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/mopub/mobileads/l;->e:Lcom/mopub/mobileads/l$a;

    sget-object v1, Lcom/mopub/mobileads/l$a;->IMAGE:Lcom/mopub/mobileads/l$a;

    if-ne v0, v1, :cond_3

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<html><head></head><body style=\"margin:0;padding:0\"><img src=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" width=\"100%\" style=\"max-width:100%;max-height:100%;\" />"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</body>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/m;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/mopub/mobileads/l;->e:Lcom/mopub/mobileads/l$a;

    sget-object v1, Lcom/mopub/mobileads/l$a;->JAVASCRIPT:Lcom/mopub/mobileads/l$a;

    if-ne v0, v1, :cond_0

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<script src=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"></script>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/m;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
