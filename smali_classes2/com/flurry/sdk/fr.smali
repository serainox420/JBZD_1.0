.class public final Lcom/flurry/sdk/fr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/fr$a;
    }
.end annotation


# instance fields
.field a:I

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/fz;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z

.field public d:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/flurry/sdk/fr;-><init>()V

    return-void
.end method

.method public static a(Lcom/flurry/sdk/fr;Lcom/flurry/sdk/fr;)Lcom/flurry/sdk/fr;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 28
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v0, v3

    .line 173
    :goto_0
    return-object v0

    .line 1180
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/fr;->b:Ljava/util/List;

    .line 2180
    iget-object v1, p1, Lcom/flurry/sdk/fr;->b:Ljava/util/List;

    .line 35
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object v0, v3

    .line 36
    goto :goto_0

    .line 40
    :cond_3
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fz;

    .line 41
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/fz;

    .line 3029
    iget-object v4, v0, Lcom/flurry/sdk/fz;->c:Lcom/flurry/sdk/gb;

    .line 4029
    iget-object v5, v1, Lcom/flurry/sdk/fz;->c:Lcom/flurry/sdk/gb;

    .line 46
    if-eqz v4, :cond_4

    if-nez v5, :cond_5

    :cond_4
    move-object v0, v3

    .line 47
    goto :goto_0

    .line 51
    :cond_5
    sget-object v1, Lcom/flurry/sdk/fu;->c:Lcom/flurry/sdk/fu;

    .line 5029
    iget-object v2, v4, Lcom/flurry/sdk/gb;->a:Lcom/flurry/sdk/fu;

    .line 51
    invoke-virtual {v1, v2}, Lcom/flurry/sdk/fu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/flurry/sdk/fu;->b:Lcom/flurry/sdk/fu;

    .line 6029
    iget-object v2, v5, Lcom/flurry/sdk/gb;->a:Lcom/flurry/sdk/fu;

    .line 52
    invoke-virtual {v1, v2}, Lcom/flurry/sdk/fu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/flurry/sdk/fu;->c:Lcom/flurry/sdk/fu;

    .line 7029
    iget-object v2, v5, Lcom/flurry/sdk/gb;->a:Lcom/flurry/sdk/fu;

    .line 52
    invoke-virtual {v1, v2}, Lcom/flurry/sdk/fu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    move-object v0, v3

    .line 53
    goto :goto_0

    .line 7071
    :cond_7
    iget-object v1, v4, Lcom/flurry/sdk/gb;->g:Ljava/util/List;

    .line 8071
    iget-object v2, v5, Lcom/flurry/sdk/gb;->g:Ljava/util/List;

    .line 59
    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    move-object v0, v3

    .line 60
    goto :goto_0

    .line 64
    :cond_9
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 67
    :cond_a
    invoke-interface {v6, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 98
    :goto_1
    new-instance v2, Lcom/flurry/sdk/gb$a;

    invoke-direct {v2}, Lcom/flurry/sdk/gb$a;-><init>()V

    .line 99
    sget-object v1, Lcom/flurry/sdk/fu;->c:Lcom/flurry/sdk/fu;

    invoke-virtual {v2, v1}, Lcom/flurry/sdk/gb$a;->a(Lcom/flurry/sdk/fu;)Lcom/flurry/sdk/gb$a;

    .line 16036
    iget-object v1, v5, Lcom/flurry/sdk/gb;->b:Ljava/lang/String;

    .line 100
    invoke-virtual {v2, v1}, Lcom/flurry/sdk/gb$a;->a(Ljava/lang/String;)Lcom/flurry/sdk/gb$a;

    .line 16043
    iget-object v1, v4, Lcom/flurry/sdk/gb;->c:Lcom/flurry/sdk/ga;

    .line 101
    invoke-virtual {v2, v1}, Lcom/flurry/sdk/gb$a;->a(Lcom/flurry/sdk/ga;)Lcom/flurry/sdk/gb$a;

    .line 104
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 16050
    iget-object v1, v4, Lcom/flurry/sdk/gb;->d:Ljava/util/List;

    .line 107
    if-eqz v1, :cond_b

    .line 108
    invoke-interface {v7, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17050
    :cond_b
    iget-object v8, v5, Lcom/flurry/sdk/gb;->d:Ljava/util/List;

    .line 112
    if-eqz v8, :cond_18

    .line 115
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 116
    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object v0, v3

    .line 117
    goto/16 :goto_0

    .line 70
    :cond_d
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/gc;

    .line 71
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/sdk/gc;

    .line 9039
    iget-object v1, v1, Lcom/flurry/sdk/gc;->d:Lcom/flurry/sdk/gd;

    .line 10039
    iget-object v7, v2, Lcom/flurry/sdk/gc;->d:Lcom/flurry/sdk/gd;

    .line 76
    if-eqz v1, :cond_e

    if-nez v7, :cond_f

    :cond_e
    move-object v0, v3

    .line 77
    goto/16 :goto_0

    .line 11022
    :cond_f
    if-eqz v1, :cond_10

    if-nez v7, :cond_11

    :cond_10
    move-object v1, v3

    .line 82
    :goto_2
    if-nez v1, :cond_16

    move-object v0, v3

    .line 83
    goto/16 :goto_0

    .line 11027
    :cond_11
    new-instance v8, Lcom/flurry/sdk/kd;

    invoke-direct {v8}, Lcom/flurry/sdk/kd;-><init>()V

    .line 11081
    iget-object v9, v1, Lcom/flurry/sdk/gd;->c:Lcom/flurry/sdk/kd;

    .line 11030
    if-eqz v9, :cond_12

    .line 11031
    invoke-virtual {v8, v9}, Lcom/flurry/sdk/kd;->a(Lcom/flurry/sdk/kd;)V

    .line 12081
    :cond_12
    iget-object v9, v7, Lcom/flurry/sdk/gd;->c:Lcom/flurry/sdk/kd;

    .line 11035
    if-eqz v9, :cond_13

    .line 11036
    invoke-virtual {v8, v9}, Lcom/flurry/sdk/kd;->a(Lcom/flurry/sdk/kd;)V

    .line 11040
    :cond_13
    new-instance v9, Lcom/flurry/sdk/kd;

    invoke-direct {v9}, Lcom/flurry/sdk/kd;-><init>()V

    .line 12088
    iget-object v1, v1, Lcom/flurry/sdk/gd;->d:Lcom/flurry/sdk/kd;

    .line 11043
    if-eqz v1, :cond_14

    .line 11044
    invoke-virtual {v9, v1}, Lcom/flurry/sdk/kd;->a(Lcom/flurry/sdk/kd;)V

    .line 13088
    :cond_14
    iget-object v1, v7, Lcom/flurry/sdk/gd;->d:Lcom/flurry/sdk/kd;

    .line 11048
    if-eqz v1, :cond_15

    .line 11049
    invoke-virtual {v9, v1}, Lcom/flurry/sdk/kd;->a(Lcom/flurry/sdk/kd;)V

    .line 11053
    :cond_15
    new-instance v1, Lcom/flurry/sdk/gd$a;

    invoke-direct {v1}, Lcom/flurry/sdk/gd$a;-><init>()V

    .line 14067
    iget v10, v7, Lcom/flurry/sdk/gd;->a:I

    .line 11054
    invoke-virtual {v1, v10}, Lcom/flurry/sdk/gd$a;->a(I)Lcom/flurry/sdk/gd$a;

    .line 14074
    iget v10, v7, Lcom/flurry/sdk/gd;->b:I

    .line 11055
    invoke-virtual {v1, v10}, Lcom/flurry/sdk/gd$a;->b(I)Lcom/flurry/sdk/gd$a;

    .line 11056
    invoke-virtual {v1, v8}, Lcom/flurry/sdk/gd$a;->a(Lcom/flurry/sdk/kd;)Lcom/flurry/sdk/gd$a;

    .line 11057
    invoke-virtual {v1, v9}, Lcom/flurry/sdk/gd$a;->b(Lcom/flurry/sdk/kd;)Lcom/flurry/sdk/gd$a;

    .line 14095
    iget-object v7, v7, Lcom/flurry/sdk/gd;->e:Lcom/flurry/sdk/ge;

    .line 11058
    invoke-virtual {v1, v7}, Lcom/flurry/sdk/gd$a;->a(Lcom/flurry/sdk/ge;)Lcom/flurry/sdk/gd$a;

    .line 14124
    iget-object v1, v1, Lcom/flurry/sdk/gd$a;->a:Lcom/flurry/sdk/gd;

    goto :goto_2

    .line 87
    :cond_16
    new-instance v7, Lcom/flurry/sdk/gc$a;

    invoke-direct {v7}, Lcom/flurry/sdk/gc$a;-><init>()V

    .line 15018
    iget-object v8, v2, Lcom/flurry/sdk/gc;->a:Ljava/lang/String;

    .line 88
    invoke-virtual {v7, v8}, Lcom/flurry/sdk/gc$a;->a(Ljava/lang/String;)Lcom/flurry/sdk/gc$a;

    .line 15025
    iget v8, v2, Lcom/flurry/sdk/gc;->b:I

    .line 89
    invoke-virtual {v7, v8}, Lcom/flurry/sdk/gc$a;->a(I)Lcom/flurry/sdk/gc$a;

    .line 15032
    iget-object v2, v2, Lcom/flurry/sdk/gc;->c:Lcom/flurry/sdk/fv;

    .line 90
    invoke-virtual {v7, v2}, Lcom/flurry/sdk/gc$a;->a(Lcom/flurry/sdk/fv;)Lcom/flurry/sdk/gc$a;

    .line 91
    invoke-virtual {v7, v1}, Lcom/flurry/sdk/gc$a;->a(Lcom/flurry/sdk/gd;)Lcom/flurry/sdk/gc$a;

    .line 15064
    iget-object v1, v7, Lcom/flurry/sdk/gc$a;->a:Lcom/flurry/sdk/gc;

    .line 94
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 121
    :cond_17
    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    :cond_18
    invoke-virtual {v2, v7}, Lcom/flurry/sdk/gb$a;->a(Ljava/util/List;)Lcom/flurry/sdk/gb$a;

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17057
    iget-object v3, v4, Lcom/flurry/sdk/gb;->e:Ljava/util/List;

    .line 129
    if-eqz v3, :cond_19

    .line 130
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18057
    :cond_19
    iget-object v3, v5, Lcom/flurry/sdk/gb;->e:Ljava/util/List;

    .line 134
    if-eqz v3, :cond_1a

    .line 135
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 137
    :cond_1a
    invoke-virtual {v2, v1}, Lcom/flurry/sdk/gb$a;->b(Ljava/util/List;)Lcom/flurry/sdk/gb$a;

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18064
    iget-object v3, v4, Lcom/flurry/sdk/gb;->f:Ljava/util/List;

    .line 143
    if-eqz v3, :cond_1b

    .line 144
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19064
    :cond_1b
    iget-object v3, v5, Lcom/flurry/sdk/gb;->f:Ljava/util/List;

    .line 148
    if-eqz v3, :cond_1c

    .line 149
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 151
    :cond_1c
    invoke-virtual {v2, v1}, Lcom/flurry/sdk/gb$a;->c(Ljava/util/List;)Lcom/flurry/sdk/gb$a;

    .line 153
    invoke-virtual {v2, v6}, Lcom/flurry/sdk/gb$a;->d(Ljava/util/List;)Lcom/flurry/sdk/gb$a;

    .line 19117
    iget-object v1, v2, Lcom/flurry/sdk/gb$a;->a:Lcom/flurry/sdk/gb;

    .line 157
    new-instance v2, Lcom/flurry/sdk/fz$a;

    invoke-direct {v2}, Lcom/flurry/sdk/fz$a;-><init>()V

    .line 20015
    iget-object v3, v0, Lcom/flurry/sdk/fz;->a:Ljava/lang/String;

    .line 158
    invoke-virtual {v2, v3}, Lcom/flurry/sdk/fz$a;->a(Ljava/lang/String;)Lcom/flurry/sdk/fz$a;

    .line 20022
    iget v0, v0, Lcom/flurry/sdk/fz;->b:I

    .line 159
    invoke-virtual {v2, v0}, Lcom/flurry/sdk/fz$a;->a(I)Lcom/flurry/sdk/fz$a;

    .line 160
    invoke-virtual {v2, v1}, Lcom/flurry/sdk/fz$a;->a(Lcom/flurry/sdk/gb;)Lcom/flurry/sdk/fz$a;

    .line 20050
    iget-object v0, v2, Lcom/flurry/sdk/fz$a;->a:Lcom/flurry/sdk/fz;

    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 165
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v0, Lcom/flurry/sdk/fr$a;

    invoke-direct {v0}, Lcom/flurry/sdk/fr$a;-><init>()V

    .line 169
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fr$a;->a(Ljava/util/List;)Lcom/flurry/sdk/fr$a;

    .line 20187
    iget v1, p0, Lcom/flurry/sdk/fr;->a:I

    .line 170
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fr$a;->a(I)Lcom/flurry/sdk/fr$a;

    .line 171
    sget-object v1, Lcom/flurry/sdk/fu;->b:Lcom/flurry/sdk/fu;

    .line 21029
    iget-object v2, v5, Lcom/flurry/sdk/gb;->a:Lcom/flurry/sdk/fu;

    .line 171
    invoke-virtual {v1, v2}, Lcom/flurry/sdk/fu;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fr$a;->a(Z)Lcom/flurry/sdk/fr$a;

    .line 21218
    iget-object v0, v0, Lcom/flurry/sdk/fr$a;->a:Lcom/flurry/sdk/fr;

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 247
    const/4 v1, 0x0

    .line 22180
    iget-object v0, p0, Lcom/flurry/sdk/fr;->b:Ljava/util/List;

    .line 249
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 250
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fz;

    .line 23029
    iget-object v0, v0, Lcom/flurry/sdk/fz;->c:Lcom/flurry/sdk/gb;

    .line 252
    if-eqz v0, :cond_0

    .line 23071
    iget-object v0, v0, Lcom/flurry/sdk/gb;->g:Ljava/util/List;

    .line 254
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 255
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/gc;

    .line 24039
    iget-object v0, v0, Lcom/flurry/sdk/gc;->d:Lcom/flurry/sdk/gd;

    .line 257
    if-eqz v0, :cond_0

    .line 24095
    iget-object v0, v0, Lcom/flurry/sdk/gd;->e:Lcom/flurry/sdk/ge;

    .line 259
    if-eqz v0, :cond_0

    .line 25039
    iget-object v2, v0, Lcom/flurry/sdk/ge;->c:Ljava/lang/String;

    .line 259
    if-eqz v2, :cond_0

    .line 26039
    iget-object v0, v0, Lcom/flurry/sdk/ge;->c:Ljava/lang/String;

    .line 266
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/flurry/sdk/fx;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/fx;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 348
    const/4 v1, 0x0

    .line 28180
    iget-object v0, p0, Lcom/flurry/sdk/fr;->b:Ljava/util/List;

    .line 350
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 351
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fz;

    .line 29029
    iget-object v0, v0, Lcom/flurry/sdk/fz;->c:Lcom/flurry/sdk/gb;

    .line 353
    if-eqz v0, :cond_0

    .line 29071
    iget-object v0, v0, Lcom/flurry/sdk/gb;->g:Ljava/util/List;

    .line 355
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 356
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/gc;

    .line 30039
    iget-object v0, v0, Lcom/flurry/sdk/gc;->d:Lcom/flurry/sdk/gd;

    .line 358
    if-eqz v0, :cond_0

    .line 30081
    iget-object v0, v0, Lcom/flurry/sdk/gd;->c:Lcom/flurry/sdk/kd;

    .line 360
    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0, p1}, Lcom/flurry/sdk/kd;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 367
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/flurry/sdk/fy;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/fy;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 316
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26180
    iget-object v0, p0, Lcom/flurry/sdk/fr;->b:Ljava/util/List;

    .line 318
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 319
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fz;

    .line 27029
    iget-object v0, v0, Lcom/flurry/sdk/fz;->c:Lcom/flurry/sdk/gb;

    .line 321
    if-eqz v0, :cond_0

    .line 27071
    iget-object v0, v0, Lcom/flurry/sdk/gb;->g:Ljava/util/List;

    .line 323
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 324
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/gc;

    .line 28039
    iget-object v0, v0, Lcom/flurry/sdk/gc;->d:Lcom/flurry/sdk/gd;

    .line 326
    if-eqz v0, :cond_0

    .line 28088
    iget-object v0, v0, Lcom/flurry/sdk/gd;->d:Lcom/flurry/sdk/kd;

    .line 328
    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0, p1}, Lcom/flurry/sdk/kd;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 330
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 336
    :cond_0
    return-object v1
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 340
    sget-object v0, Lcom/flurry/sdk/fy;->b:Lcom/flurry/sdk/fy;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/fr;->a(Lcom/flurry/sdk/fy;)Ljava/util/List;

    move-result-object v0

    .line 341
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 342
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 344
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
