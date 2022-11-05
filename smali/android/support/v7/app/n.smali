.class public Landroid/support/v7/app/n;
.super Landroid/support/v7/app/k;
.source "MediaRouteChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/n$c;,
        Landroid/support/v7/app/n$a;,
        Landroid/support/v7/app/n$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v7/media/g;

.field private final b:Landroid/support/v7/app/n$a;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/support/v7/media/f;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/media/g$g;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/support/v7/app/n$b;

.field private g:Landroid/widget/ListView;

.field private h:Z

.field private i:J

.field private final j:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/n;-><init>(Landroid/content/Context;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 95
    invoke-static {p1, p2}, Landroid/support/v7/app/t;->a(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/support/v7/app/k;-><init>(Landroid/content/Context;I)V

    .line 73
    sget-object v0, Landroid/support/v7/media/f;->b:Landroid/support/v7/media/f;

    iput-object v0, p0, Landroid/support/v7/app/n;->d:Landroid/support/v7/media/f;

    .line 79
    new-instance v0, Landroid/support/v7/app/n$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/n$1;-><init>(Landroid/support/v7/app/n;)V

    iput-object v0, p0, Landroid/support/v7/app/n;->j:Landroid/os/Handler;

    .line 96
    invoke-virtual {p0}, Landroid/support/v7/app/n;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    invoke-static {v0}, Landroid/support/v7/media/g;->a(Landroid/content/Context;)Landroid/support/v7/media/g;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/media/g;

    .line 99
    new-instance v0, Landroid/support/v7/app/n$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/n$a;-><init>(Landroid/support/v7/app/n;)V

    iput-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/support/v7/app/n$a;

    .line 100
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/media/f;)V
    .locals 3

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selector must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/n;->d:Landroid/support/v7/media/f;

    invoke-virtual {v0, p1}, Landroid/support/v7/media/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 123
    iput-object p1, p0, Landroid/support/v7/app/n;->d:Landroid/support/v7/media/f;

    .line 125
    iget-boolean v0, p0, Landroid/support/v7/app/n;->h:Z

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/media/g;

    iget-object v1, p0, Landroid/support/v7/app/n;->b:Landroid/support/v7/app/n$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/g;->a(Landroid/support/v7/media/g$a;)V

    .line 127
    iget-object v0, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/media/g;

    iget-object v1, p0, Landroid/support/v7/app/n;->b:Landroid/support/v7/app/n$a;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v7/media/g;->a(Landroid/support/v7/media/f;Landroid/support/v7/media/g$a;I)V

    .line 131
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/app/n;->c()V

    .line 133
    :cond_2
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/media/g$g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 146
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g$g;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/n;->a(Landroid/support/v7/media/g$g;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v1

    goto :goto_0

    .line 150
    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public a(Landroid/support/v7/media/g$g;)Z
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/support/v7/media/g$g;->o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/media/g$g;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/n;->d:Landroid/support/v7/media/f;

    .line 165
    invoke-virtual {p1, v0}, Landroid/support/v7/media/g$g;->a(Landroid/support/v7/media/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()V
    .locals 3

    .prologue
    .line 199
    invoke-virtual {p0}, Landroid/support/v7/app/n;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/app/n;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/app/s;->a(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 201
    return-void
.end method

.method b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/media/g$g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v7/app/n;->i:J

    .line 241
    iget-object v0, p0, Landroid/support/v7/app/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 242
    iget-object v0, p0, Landroid/support/v7/app/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 243
    iget-object v0, p0, Landroid/support/v7/app/n;->f:Landroid/support/v7/app/n$b;

    invoke-virtual {v0}, Landroid/support/v7/app/n$b;->notifyDataSetChanged()V

    .line 244
    return-void
.end method

.method public c()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x12c

    const/4 v6, 0x1

    .line 225
    iget-boolean v0, p0, Landroid/support/v7/app/n;->h:Z

    if-eqz v0, :cond_0

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/media/g;

    invoke-virtual {v1}, Landroid/support/v7/media/g;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 227
    invoke-virtual {p0, v0}, Landroid/support/v7/app/n;->a(Ljava/util/List;)V

    .line 228
    sget-object v1, Landroid/support/v7/app/n$c;->a:Landroid/support/v7/app/n$c;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 229
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/support/v7/app/n;->i:J

    sub-long/2addr v2, v4

    cmp-long v1, v2, v8

    if-ltz v1, :cond_1

    .line 230
    invoke-virtual {p0, v0}, Landroid/support/v7/app/n;->b(Ljava/util/List;)V

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v1, p0, Landroid/support/v7/app/n;->j:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 233
    iget-object v1, p0, Landroid/support/v7/app/n;->j:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/v7/app/n;->j:Landroid/os/Handler;

    invoke-virtual {v2, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-wide v2, p0, Landroid/support/v7/app/n;->i:J

    add-long/2addr v2, v8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 205
    invoke-super {p0}, Landroid/support/v7/app/k;->onAttachedToWindow()V

    .line 207
    iput-boolean v3, p0, Landroid/support/v7/app/n;->h:Z

    .line 208
    iget-object v0, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/media/g;

    iget-object v1, p0, Landroid/support/v7/app/n;->d:Landroid/support/v7/media/f;

    iget-object v2, p0, Landroid/support/v7/app/n;->b:Landroid/support/v7/app/n$a;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/media/g;->a(Landroid/support/v7/media/f;Landroid/support/v7/media/g$a;I)V

    .line 209
    invoke-virtual {p0}, Landroid/support/v7/app/n;->c()V

    .line 210
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/support/v7/app/k;->onCreate(Landroid/os/Bundle;)V

    .line 182
    sget v0, Landroid/support/v7/mediarouter/R$layout;->mr_chooser_dialog:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/n;->setContentView(I)V

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/n;->e:Ljava/util/ArrayList;

    .line 185
    new-instance v0, Landroid/support/v7/app/n$b;

    invoke-virtual {p0}, Landroid/support/v7/app/n;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/n;->e:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Landroid/support/v7/app/n$b;-><init>(Landroid/support/v7/app/n;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Landroid/support/v7/app/n;->f:Landroid/support/v7/app/n$b;

    .line 186
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_chooser_list:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Landroid/support/v7/app/n;->g:Landroid/widget/ListView;

    .line 187
    iget-object v0, p0, Landroid/support/v7/app/n;->g:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/support/v7/app/n;->f:Landroid/support/v7/app/n$b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 188
    iget-object v0, p0, Landroid/support/v7/app/n;->g:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/support/v7/app/n;->f:Landroid/support/v7/app/n$b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 189
    iget-object v0, p0, Landroid/support/v7/app/n;->g:Landroid/widget/ListView;

    const v1, 0x1020004

    invoke-virtual {p0, v1}, Landroid/support/v7/app/n;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 190
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_chooser_title:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/app/n;->c:Landroid/widget/TextView;

    .line 192
    invoke-virtual {p0}, Landroid/support/v7/app/n;->b()V

    .line 193
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/n;->h:Z

    .line 215
    iget-object v0, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/media/g;

    iget-object v1, p0, Landroid/support/v7/app/n;->b:Landroid/support/v7/app/n$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/g;->a(Landroid/support/v7/media/g$a;)V

    .line 216
    iget-object v0, p0, Landroid/support/v7/app/n;->j:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 218
    invoke-super {p0}, Landroid/support/v7/app/k;->onDetachedFromWindow()V

    .line 219
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Landroid/support/v7/app/n;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 176
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Landroid/support/v7/app/n;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    return-void
.end method
