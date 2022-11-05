.class final Lcom/flurry/sdk/dp$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ks$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/dp;->a(Lcom/flurry/sdk/do;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/ks$a",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/do;

.field final synthetic b:Lcom/flurry/sdk/dp;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dp;Lcom/flurry/sdk/do;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/flurry/sdk/dp$2;->b:Lcom/flurry/sdk/dp;

    iput-object p2, p0, Lcom/flurry/sdk/dp$2;->a:Lcom/flurry/sdk/do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/ks;Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/16 v3, 0x12c

    const/4 v4, 0x3

    .line 63
    .line 1066
    invoke-static {}, Lcom/flurry/sdk/dp;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AsyncReportInfo request: HTTP status code is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1220
    iget v2, p1, Lcom/flurry/sdk/ku;->p:I

    .line 1066
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 2220
    iget v1, p1, Lcom/flurry/sdk/ku;->p:I

    .line 1069
    const/16 v0, 0xc8

    if-lt v1, v0, :cond_1

    if-ge v1, v3, :cond_1

    .line 1070
    invoke-static {}, Lcom/flurry/sdk/dp;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Send report successful to url: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3140
    iget-object v3, p1, Lcom/flurry/sdk/ku;->f:Ljava/lang/String;

    .line 1070
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1072
    iget-object v0, p0, Lcom/flurry/sdk/dp$2;->b:Lcom/flurry/sdk/dp;

    iget-object v2, p0, Lcom/flurry/sdk/dp$2;->a:Lcom/flurry/sdk/do;

    invoke-static {v0, v2}, Lcom/flurry/sdk/dp;->a(Lcom/flurry/sdk/dp;Lcom/flurry/sdk/kw;)V

    .line 1075
    invoke-static {}, Lcom/flurry/sdk/km;->c()I

    move-result v0

    if-gt v0, v4, :cond_0

    invoke-static {}, Lcom/flurry/sdk/km;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1076
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v2, Lcom/flurry/sdk/dp$2$1;

    invoke-direct {v2, p0, p1}, Lcom/flurry/sdk/dp$2$1;-><init>(Lcom/flurry/sdk/dp$2;Lcom/flurry/sdk/ks;)V

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Runnable;)V

    .line 1085
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/dp$2;->a:Lcom/flurry/sdk/do;

    invoke-static {v0, v1}, Lcom/flurry/sdk/dp;->a(Lcom/flurry/sdk/do;I)V

    .line 1127
    :goto_0
    return-void

    .line 1086
    :cond_1
    if-lt v1, v3, :cond_5

    const/16 v0, 0x190

    if-ge v1, v0, :cond_5

    .line 1087
    const/4 v0, 0x0

    .line 1089
    const-string v2, "Location"

    invoke-virtual {p1, v2}, Lcom/flurry/sdk/ks;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1090
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1091
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/dp$2;->a:Lcom/flurry/sdk/do;

    .line 4038
    iget-object v2, v2, Lcom/flurry/sdk/kw;->r:Ljava/lang/String;

    .line 1091
    invoke-static {v0, v2}, Lcom/flurry/sdk/mc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1094
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1095
    invoke-static {}, Lcom/flurry/sdk/dp;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Send report successful to url: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4140
    iget-object v3, p1, Lcom/flurry/sdk/ku;->f:Ljava/lang/String;

    .line 1095
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1097
    iget-object v0, p0, Lcom/flurry/sdk/dp$2;->b:Lcom/flurry/sdk/dp;

    iget-object v2, p0, Lcom/flurry/sdk/dp$2;->a:Lcom/flurry/sdk/do;

    invoke-static {v0, v2}, Lcom/flurry/sdk/dp;->b(Lcom/flurry/sdk/dp;Lcom/flurry/sdk/kw;)V

    .line 1100
    invoke-static {}, Lcom/flurry/sdk/km;->c()I

    move-result v0

    if-gt v0, v4, :cond_3

    invoke-static {}, Lcom/flurry/sdk/km;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1101
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v2, Lcom/flurry/sdk/dp$2$2;

    invoke-direct {v2, p0, p1}, Lcom/flurry/sdk/dp$2$2;-><init>(Lcom/flurry/sdk/dp$2;Lcom/flurry/sdk/ks;)V

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Runnable;)V

    .line 1110
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/dp$2;->a:Lcom/flurry/sdk/do;

    invoke-static {v0, v1}, Lcom/flurry/sdk/dp;->a(Lcom/flurry/sdk/do;I)V

    goto :goto_0

    .line 1112
    :cond_4
    invoke-static {}, Lcom/flurry/sdk/dp;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Send report redirecting to url: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1114
    iget-object v1, p0, Lcom/flurry/sdk/dp$2;->a:Lcom/flurry/sdk/do;

    .line 5067
    iput-object v0, v1, Lcom/flurry/sdk/kw;->r:Ljava/lang/String;

    .line 1115
    iget-object v0, p0, Lcom/flurry/sdk/dp$2;->b:Lcom/flurry/sdk/dp;

    iget-object v1, p0, Lcom/flurry/sdk/dp$2;->a:Lcom/flurry/sdk/do;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dp;->a(Lcom/flurry/sdk/do;)V

    goto/16 :goto_0

    .line 1118
    :cond_5
    invoke-static {}, Lcom/flurry/sdk/dp;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Send report failed to url: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5140
    iget-object v3, p1, Lcom/flurry/sdk/ku;->f:Ljava/lang/String;

    .line 1118
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1121
    iget-object v0, p0, Lcom/flurry/sdk/dp$2;->a:Lcom/flurry/sdk/do;

    .line 6026
    iget v0, v0, Lcom/flurry/sdk/kw;->p:I

    .line 1121
    if-nez v0, :cond_6

    .line 1122
    iget-object v0, p0, Lcom/flurry/sdk/dp$2;->a:Lcom/flurry/sdk/do;

    invoke-static {v0, v1}, Lcom/flurry/sdk/dp;->a(Lcom/flurry/sdk/do;I)V

    .line 1126
    :cond_6
    iget-object v0, p0, Lcom/flurry/sdk/dp$2;->a:Lcom/flurry/sdk/do;

    .line 6038
    iget-object v0, v0, Lcom/flurry/sdk/kw;->r:Ljava/lang/String;

    .line 1126
    invoke-static {v0}, Lcom/flurry/sdk/mc;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1127
    iget-object v0, p0, Lcom/flurry/sdk/dp$2;->b:Lcom/flurry/sdk/dp;

    iget-object v1, p0, Lcom/flurry/sdk/dp$2;->a:Lcom/flurry/sdk/do;

    invoke-static {v0, v1}, Lcom/flurry/sdk/dp;->c(Lcom/flurry/sdk/dp;Lcom/flurry/sdk/kw;)V

    goto/16 :goto_0

    .line 1129
    :cond_7
    invoke-static {}, Lcom/flurry/sdk/dp;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Oops! url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6140
    iget-object v2, p1, Lcom/flurry/sdk/ku;->f:Ljava/lang/String;

    .line 1129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid, aborting transmission"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1130
    iget-object v0, p0, Lcom/flurry/sdk/dp$2;->b:Lcom/flurry/sdk/dp;

    iget-object v1, p0, Lcom/flurry/sdk/dp$2;->a:Lcom/flurry/sdk/do;

    invoke-static {v0, v1}, Lcom/flurry/sdk/dp;->d(Lcom/flurry/sdk/dp;Lcom/flurry/sdk/kw;)V

    goto/16 :goto_0
.end method
