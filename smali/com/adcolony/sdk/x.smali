.class Lcom/adcolony/sdk/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:[F

.field static b:Lcom/adcolony/sdk/x;


# instance fields
.field c:[D

.field d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/adcolony/sdk/x;->a:[F

    .line 7
    new-instance v0, Lcom/adcolony/sdk/x;

    invoke-direct {v0}, Lcom/adcolony/sdk/x;-><init>()V

    sput-object v0, Lcom/adcolony/sdk/x;->b:Lcom/adcolony/sdk/x;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/16 v0, 0x10

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/adcolony/sdk/x;->c:[D

    .line 16
    invoke-virtual {p0}, Lcom/adcolony/sdk/x;->b()Lcom/adcolony/sdk/x;

    .line 17
    return-void
.end method

.method constructor <init>(DDDDDDDDDDDDDDDD)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/16 v0, 0x10

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/adcolony/sdk/x;->c:[D

    .line 24
    invoke-virtual/range {p0 .. p32}, Lcom/adcolony/sdk/x;->b(DDDDDDDDDDDDDDDD)Lcom/adcolony/sdk/x;

    .line 29
    return-void
.end method


# virtual methods
.method a()Lcom/adcolony/sdk/x;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/adcolony/sdk/x;

    invoke-direct {v0}, Lcom/adcolony/sdk/x;-><init>()V

    .line 34
    invoke-virtual {v0, p0}, Lcom/adcolony/sdk/x;->b(Lcom/adcolony/sdk/x;)Lcom/adcolony/sdk/x;

    .line 35
    return-object v0
.end method

.method a(D)Lcom/adcolony/sdk/x;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 226
    sget-object v0, Lcom/adcolony/sdk/x;->b:Lcom/adcolony/sdk/x;

    invoke-virtual {v0}, Lcom/adcolony/sdk/x;->b()Lcom/adcolony/sdk/x;

    .line 228
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 229
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 231
    sget-object v4, Lcom/adcolony/sdk/x;->b:Lcom/adcolony/sdk/x;

    iget-object v4, v4, Lcom/adcolony/sdk/x;->c:[D

    aput-wide v0, v4, v6

    .line 232
    sget-object v4, Lcom/adcolony/sdk/x;->b:Lcom/adcolony/sdk/x;

    iget-object v4, v4, Lcom/adcolony/sdk/x;->c:[D

    const/4 v5, 0x1

    aput-wide v2, v4, v5

    .line 233
    sget-object v4, Lcom/adcolony/sdk/x;->b:Lcom/adcolony/sdk/x;

    iget-object v4, v4, Lcom/adcolony/sdk/x;->c:[D

    const/4 v5, 0x4

    neg-double v2, v2

    aput-wide v2, v4, v5

    .line 234
    sget-object v2, Lcom/adcolony/sdk/x;->b:Lcom/adcolony/sdk/x;

    iget-object v2, v2, Lcom/adcolony/sdk/x;->c:[D

    const/4 v3, 0x5

    aput-wide v0, v2, v3

    .line 235
    sget-object v0, Lcom/adcolony/sdk/x;->b:Lcom/adcolony/sdk/x;

    iput-boolean v6, v0, Lcom/adcolony/sdk/x;->d:Z

    .line 237
    sget-object v0, Lcom/adcolony/sdk/x;->b:Lcom/adcolony/sdk/x;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/x;->a(Lcom/adcolony/sdk/x;)Lcom/adcolony/sdk/x;

    move-result-object v0

    return-object v0
.end method

.method a(DDD)Lcom/adcolony/sdk/x;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 247
    sget-object v0, Lcom/adcolony/sdk/x;->b:Lcom/adcolony/sdk/x;

    invoke-virtual {v0}, Lcom/adcolony/sdk/x;->b()Lcom/adcolony/sdk/x;

    .line 249
    sget-object v0, Lcom/adcolony/sdk/x;->b:Lcom/adcolony/sdk/x;

    iget-object v0, v0, Lcom/adcolony/sdk/x;->c:[D

    aput-wide p1, v0, v2

    .line 250
    sget-object v0, Lcom/adcolony/sdk/x;->b:Lcom/adcolony/sdk/x;

    iget-object v0, v0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v1, 0x5

    aput-wide p3, v0, v1

    .line 251
    sget-object v0, Lcom/adcolony/sdk/x;->b:Lcom/adcolony/sdk/x;

    iget-object v0, v0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v1, 0xa

    aput-wide p5, v0, v1

    .line 252
    sget-object v0, Lcom/adcolony/sdk/x;->b:Lcom/adcolony/sdk/x;

    iput-boolean v2, v0, Lcom/adcolony/sdk/x;->d:Z

    .line 254
    sget-object v0, Lcom/adcolony/sdk/x;->b:Lcom/adcolony/sdk/x;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/x;->a(Lcom/adcolony/sdk/x;)Lcom/adcolony/sdk/x;

    move-result-object v0

    return-object v0
.end method

.method a(DDDDDDDDDDDDDDDD)Lcom/adcolony/sdk/x;
    .locals 35

    .prologue
    .line 70
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move-wide/from16 v16, p15

    move-wide/from16 v18, p17

    move-wide/from16 v20, p19

    move-wide/from16 v22, p21

    move-wide/from16 v24, p23

    move-wide/from16 v26, p25

    move-wide/from16 v28, p27

    move-wide/from16 v30, p29

    move-wide/from16 v32, p31

    move-object/from16 v34, p0

    invoke-virtual/range {v1 .. v34}, Lcom/adcolony/sdk/x;->a(DDDDDDDDDDDDDDDDLcom/adcolony/sdk/x;)Lcom/adcolony/sdk/x;

    move-result-object v0

    return-object v0
.end method

.method a(DDDDDDDDDDDDDDDDLcom/adcolony/sdk/x;)Lcom/adcolony/sdk/x;
    .locals 41

    .prologue
    .line 85
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/adcolony/sdk/x;->d:Z

    if-eqz v2, :cond_0

    move-object/from16 v3, p33

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    move-wide/from16 v18, p15

    move-wide/from16 v20, p17

    move-wide/from16 v22, p19

    move-wide/from16 v24, p21

    move-wide/from16 v26, p23

    move-wide/from16 v28, p25

    move-wide/from16 v30, p27

    move-wide/from16 v32, p29

    move-wide/from16 v34, p31

    .line 87
    invoke-virtual/range {v3 .. v35}, Lcom/adcolony/sdk/x;->b(DDDDDDDDDDDDDDDD)Lcom/adcolony/sdk/x;

    move-result-object p33

    .line 193
    :goto_0
    return-object p33

    .line 94
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    .line 95
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    .line 96
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    .line 97
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v9, 0x3

    aget-wide v8, v8, v9

    .line 98
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v11, 0x4

    aget-wide v10, v10, v11

    .line 99
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v13, 0x5

    aget-wide v12, v12, v13

    .line 100
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v15, 0x6

    aget-wide v14, v14, v15

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adcolony/sdk/x;->c:[D

    move-object/from16 v16, v0

    const/16 v17, 0x7

    aget-wide v16, v16, v17

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adcolony/sdk/x;->c:[D

    move-object/from16 v18, v0

    const/16 v19, 0x8

    aget-wide v18, v18, v19

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adcolony/sdk/x;->c:[D

    move-object/from16 v20, v0

    const/16 v21, 0x9

    aget-wide v20, v20, v21

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adcolony/sdk/x;->c:[D

    move-object/from16 v22, v0

    const/16 v23, 0xa

    aget-wide v22, v22, v23

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adcolony/sdk/x;->c:[D

    move-object/from16 v24, v0

    const/16 v25, 0xb

    aget-wide v24, v24, v25

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adcolony/sdk/x;->c:[D

    move-object/from16 v26, v0

    const/16 v27, 0xc

    aget-wide v26, v26, v27

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adcolony/sdk/x;->c:[D

    move-object/from16 v28, v0

    const/16 v29, 0xd

    aget-wide v28, v28, v29

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adcolony/sdk/x;->c:[D

    move-object/from16 v30, v0

    const/16 v31, 0xe

    aget-wide v30, v30, v31

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adcolony/sdk/x;->c:[D

    move-object/from16 v32, v0

    const/16 v33, 0xf

    aget-wide v32, v32, v33

    .line 111
    move-object/from16 v0, p33

    iget-object v0, v0, Lcom/adcolony/sdk/x;->c:[D

    move-object/from16 v34, v0

    const/16 v35, 0x0

    mul-double v36, v2, p1

    mul-double v38, v4, p9

    add-double v36, v36, v38

    mul-double v38, v6, p17

    add-double v36, v36, v38

    mul-double v38, v8, p25

    add-double v36, v36, v38

    aput-wide v36, v34, v35

    .line 116
    move-object/from16 v0, p33

    iget-object v0, v0, Lcom/adcolony/sdk/x;->c:[D

    move-object/from16 v34, v0

    const/16 v35, 0x1

    mul-double v36, v2, p3

    mul-double v38, v4, p11

    add-double v36, v36, v38

    mul-double v38, v6, p19

    add-double v36, v36, v38

    mul-double v38, v8, p27

    add-double v36, v36, v38

    aput-wide v36, v34, v35

    .line 121
    move-object/from16 v0, p33

    iget-object v0, v0, Lcom/adcolony/sdk/x;->c:[D

    move-object/from16 v34, v0

    const/16 v35, 0x2

    mul-double v36, v2, p5

    mul-double v38, v4, p13

    add-double v36, v36, v38

    mul-double v38, v6, p21

    add-double v36, v36, v38

    mul-double v38, v8, p29

    add-double v36, v36, v38

    aput-wide v36, v34, v35

    .line 126
    move-object/from16 v0, p33

    iget-object v0, v0, Lcom/adcolony/sdk/x;->c:[D

    move-object/from16 v34, v0

    const/16 v35, 0x3

    mul-double v2, v2, p7

    mul-double v4, v4, p15

    add-double/2addr v2, v4

    mul-double v4, v6, p23

    add-double/2addr v2, v4

    mul-double v4, v8, p31

    add-double/2addr v2, v4

    aput-wide v2, v34, v35

    .line 131
    move-object/from16 v0, p33

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v3, 0x4

    mul-double v4, v10, p1

    mul-double v6, v12, p9

    add-double/2addr v4, v6

    mul-double v6, v14, p17

    add-double/2addr v4, v6

    mul-double v6, v16, p25

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 136
    move-object/from16 v0, p33

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v3, 0x5

    mul-double v4, v10, p3

    mul-double v6, v12, p11

    add-double/2addr v4, v6

    mul-double v6, v14, p19

    add-double/2addr v4, v6

    mul-double v6, v16, p27

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 141
    move-object/from16 v0, p33

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v3, 0x6

    mul-double v4, v10, p5

    mul-double v6, v12, p13

    add-double/2addr v4, v6

    mul-double v6, v14, p21

    add-double/2addr v4, v6

    mul-double v6, v16, p29

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 146
    move-object/from16 v0, p33

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v3, 0x7

    mul-double v4, v10, p7

    mul-double v6, v12, p15

    add-double/2addr v4, v6

    mul-double v6, v14, p23

    add-double/2addr v4, v6

    mul-double v6, v16, p31

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 151
    move-object/from16 v0, p33

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v3, 0x8

    mul-double v4, v18, p1

    mul-double v6, v20, p9

    add-double/2addr v4, v6

    mul-double v6, v22, p17

    add-double/2addr v4, v6

    mul-double v6, v24, p25

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 156
    move-object/from16 v0, p33

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v3, 0x9

    mul-double v4, v18, p3

    mul-double v6, v20, p11

    add-double/2addr v4, v6

    mul-double v6, v22, p19

    add-double/2addr v4, v6

    mul-double v6, v24, p27

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 161
    move-object/from16 v0, p33

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v3, 0xa

    mul-double v4, v18, p5

    mul-double v6, v20, p13

    add-double/2addr v4, v6

    mul-double v6, v22, p21

    add-double/2addr v4, v6

    mul-double v6, v24, p29

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 166
    move-object/from16 v0, p33

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v3, 0xb

    mul-double v4, v18, p7

    mul-double v6, v20, p15

    add-double/2addr v4, v6

    mul-double v6, v22, p23

    add-double/2addr v4, v6

    mul-double v6, v24, p31

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 171
    move-object/from16 v0, p33

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v3, 0xc

    mul-double v4, v26, p1

    mul-double v6, v28, p9

    add-double/2addr v4, v6

    mul-double v6, v30, p17

    add-double/2addr v4, v6

    mul-double v6, v32, p25

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 176
    move-object/from16 v0, p33

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v3, 0xd

    mul-double v4, v26, p3

    mul-double v6, v28, p11

    add-double/2addr v4, v6

    mul-double v6, v30, p19

    add-double/2addr v4, v6

    mul-double v6, v32, p27

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 181
    move-object/from16 v0, p33

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v3, 0xe

    mul-double v4, v26, p5

    mul-double v6, v28, p13

    add-double/2addr v4, v6

    mul-double v6, v30, p21

    add-double/2addr v4, v6

    mul-double v6, v32, p29

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 186
    move-object/from16 v0, p33

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v3, 0xf

    mul-double v4, v26, p7

    mul-double v6, v28, p15

    add-double/2addr v4, v6

    mul-double v6, v30, p23

    add-double/2addr v4, v6

    mul-double v6, v32, p31

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 191
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/adcolony/sdk/x;->d:Z

    goto/16 :goto_0
.end method

.method a(IID)Lcom/adcolony/sdk/x;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const-wide/high16 v8, -0x4000000000000000L    # -2.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 313
    invoke-virtual {p0}, Lcom/adcolony/sdk/x;->b()Lcom/adcolony/sdk/x;

    .line 315
    iget-object v0, p0, Lcom/adcolony/sdk/x;->c:[D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    int-to-double v4, p1

    div-double/2addr v2, v4

    aput-wide v2, v0, v10

    .line 316
    iget-object v0, p0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v1, 0x5

    int-to-double v2, p2

    div-double v2, v8, v2

    aput-wide v2, v0, v1

    .line 317
    iget-object v0, p0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v1, 0xa

    div-double v2, v8, p3

    aput-wide v2, v0, v1

    .line 318
    iget-object v0, p0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v1, 0xc

    aput-wide v6, v0, v1

    .line 319
    iget-object v0, p0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v1, 0xd

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v0, v1

    .line 320
    iget-object v0, p0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v1, 0xe

    aput-wide v6, v0, v1

    .line 322
    iput-boolean v10, p0, Lcom/adcolony/sdk/x;->d:Z

    .line 324
    return-object p0
.end method

.method a(Lcom/adcolony/sdk/x;)Lcom/adcolony/sdk/x;
    .locals 36

    .prologue
    .line 40
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/adcolony/sdk/x;->d:Z

    if-eqz v2, :cond_0

    .line 45
    :goto_0
    return-object p0

    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v3, 0x1

    aget-wide v6, v2, v3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v3, 0x2

    aget-wide v8, v2, v3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v3, 0x3

    aget-wide v10, v2, v3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v3, 0x4

    aget-wide v12, v2, v3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v3, 0x5

    aget-wide v14, v2, v3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v3, 0x6

    aget-wide v16, v2, v3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v3, 0x7

    aget-wide v18, v2, v3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v3, 0x8

    aget-wide v20, v2, v3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v3, 0x9

    aget-wide v22, v2, v3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v3, 0xa

    aget-wide v24, v2, v3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v3, 0xb

    aget-wide v26, v2, v3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v3, 0xc

    aget-wide v28, v2, v3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v3, 0xd

    aget-wide v30, v2, v3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v3, 0xe

    aget-wide v32, v2, v3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v3, 0xf

    aget-wide v34, v2, v3

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v35}, Lcom/adcolony/sdk/x;->a(DDDDDDDDDDDDDDDD)Lcom/adcolony/sdk/x;

    move-result-object p0

    goto :goto_0
.end method

.method a(Lcom/adcolony/sdk/x;Lcom/adcolony/sdk/x;)Lcom/adcolony/sdk/x;
    .locals 37

    .prologue
    .line 198
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/adcolony/sdk/x;->d:Z

    if-eqz v2, :cond_0

    .line 200
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/x;->b(Lcom/adcolony/sdk/x;)Lcom/adcolony/sdk/x;

    move-result-object v2

    .line 203
    :goto_0
    return-object v2

    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v3, 0x1

    aget-wide v6, v2, v3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v3, 0x2

    aget-wide v8, v2, v3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v3, 0x3

    aget-wide v10, v2, v3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v3, 0x4

    aget-wide v12, v2, v3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v3, 0x5

    aget-wide v14, v2, v3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v3, 0x6

    aget-wide v16, v2, v3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v3, 0x7

    aget-wide v18, v2, v3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v3, 0x8

    aget-wide v20, v2, v3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v3, 0x9

    aget-wide v22, v2, v3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v3, 0xa

    aget-wide v24, v2, v3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v3, 0xb

    aget-wide v26, v2, v3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v3, 0xc

    aget-wide v28, v2, v3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v3, 0xd

    aget-wide v30, v2, v3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v3, 0xe

    aget-wide v32, v2, v3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v3, 0xf

    aget-wide v34, v2, v3

    move-object/from16 v3, p0

    move-object/from16 v36, p2

    invoke-virtual/range {v3 .. v36}, Lcom/adcolony/sdk/x;->a(DDDDDDDDDDDDDDDDLcom/adcolony/sdk/x;)Lcom/adcolony/sdk/x;

    move-result-object v2

    goto/16 :goto_0
.end method

.method a([F)[F
    .locals 4

    .prologue
    .line 358
    const/16 v0, 0xf

    :goto_0
    if-ltz v0, :cond_0

    .line 360
    iget-object v1, p0, Lcom/adcolony/sdk/x;->c:[D

    aget-wide v2, v1, v0

    double-to-float v1, v2

    aput v1, p1, v0

    .line 358
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 363
    :cond_0
    return-object p1
.end method

.method b()Lcom/adcolony/sdk/x;
    .locals 8

    .prologue
    const/16 v1, 0xf

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 296
    move v0, v1

    :goto_0
    if-ltz v0, :cond_0

    .line 298
    iget-object v2, p0, Lcom/adcolony/sdk/x;->c:[D

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v0

    .line 296
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v2, 0x0

    aput-wide v6, v0, v2

    .line 302
    iget-object v0, p0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v2, 0x5

    aput-wide v6, v0, v2

    .line 303
    iget-object v0, p0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v2, 0xa

    aput-wide v6, v0, v2

    .line 304
    iget-object v0, p0, Lcom/adcolony/sdk/x;->c:[D

    aput-wide v6, v0, v1

    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adcolony/sdk/x;->d:Z

    .line 308
    return-object p0
.end method

.method b(D)Lcom/adcolony/sdk/x;
    .locals 5

    .prologue
    .line 242
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, p1

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/x;->a(D)Lcom/adcolony/sdk/x;

    move-result-object v0

    return-object v0
.end method

.method b(DDD)Lcom/adcolony/sdk/x;
    .locals 3

    .prologue
    .line 329
    sget-object v0, Lcom/adcolony/sdk/x;->b:Lcom/adcolony/sdk/x;

    invoke-virtual {v0}, Lcom/adcolony/sdk/x;->b()Lcom/adcolony/sdk/x;

    .line 331
    sget-object v0, Lcom/adcolony/sdk/x;->b:Lcom/adcolony/sdk/x;

    iget-object v0, v0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v1, 0xc

    aput-wide p1, v0, v1

    .line 332
    sget-object v0, Lcom/adcolony/sdk/x;->b:Lcom/adcolony/sdk/x;

    iget-object v0, v0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v1, 0xd

    aput-wide p3, v0, v1

    .line 333
    sget-object v0, Lcom/adcolony/sdk/x;->b:Lcom/adcolony/sdk/x;

    iget-object v0, v0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v1, 0xe

    aput-wide p5, v0, v1

    .line 334
    sget-object v0, Lcom/adcolony/sdk/x;->b:Lcom/adcolony/sdk/x;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adcolony/sdk/x;->d:Z

    .line 336
    sget-object v0, Lcom/adcolony/sdk/x;->b:Lcom/adcolony/sdk/x;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/x;->a(Lcom/adcolony/sdk/x;)Lcom/adcolony/sdk/x;

    move-result-object v0

    return-object v0
.end method

.method b(DDDDDDDDDDDDDDDD)Lcom/adcolony/sdk/x;
    .locals 3

    .prologue
    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adcolony/sdk/x;->d:Z

    .line 275
    iget-object v0, p0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 276
    iget-object v0, p0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    .line 277
    iget-object v0, p0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v1, 0x2

    aput-wide p5, v0, v1

    .line 278
    iget-object v0, p0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v1, 0x3

    aput-wide p7, v0, v1

    .line 279
    iget-object v0, p0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v1, 0x4

    aput-wide p9, v0, v1

    .line 280
    iget-object v0, p0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v1, 0x5

    aput-wide p11, v0, v1

    .line 281
    iget-object v0, p0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v1, 0x6

    aput-wide p13, v0, v1

    .line 282
    iget-object v0, p0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v1, 0x7

    aput-wide p15, v0, v1

    .line 283
    iget-object v0, p0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v1, 0x8

    aput-wide p17, v0, v1

    .line 284
    iget-object v0, p0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v1, 0x9

    aput-wide p19, v0, v1

    .line 285
    iget-object v0, p0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v1, 0xa

    aput-wide p21, v0, v1

    .line 286
    iget-object v0, p0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v1, 0xb

    aput-wide p23, v0, v1

    .line 287
    iget-object v0, p0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v1, 0xc

    aput-wide p25, v0, v1

    .line 288
    iget-object v0, p0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v1, 0xd

    aput-wide p27, v0, v1

    .line 289
    iget-object v0, p0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v1, 0xe

    aput-wide p29, v0, v1

    .line 290
    iget-object v0, p0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v1, 0xf

    aput-wide p31, v0, v1

    .line 291
    return-object p0
.end method

.method b(Lcom/adcolony/sdk/x;)Lcom/adcolony/sdk/x;
    .locals 4

    .prologue
    .line 259
    const/16 v0, 0xf

    :goto_0
    if-ltz v0, :cond_0

    .line 261
    iget-object v1, p0, Lcom/adcolony/sdk/x;->c:[D

    iget-object v2, p1, Lcom/adcolony/sdk/x;->c:[D

    aget-wide v2, v2, v0

    aput-wide v2, v1, v0

    .line 259
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 264
    :cond_0
    iget-boolean v0, p1, Lcom/adcolony/sdk/x;->d:Z

    iput-boolean v0, p0, Lcom/adcolony/sdk/x;->d:Z

    .line 266
    return-object p0
.end method

.method c(D)Lcom/adcolony/sdk/x;
    .locals 3

    .prologue
    .line 341
    const/16 v0, 0xf

    :goto_0
    if-ltz v0, :cond_0

    .line 343
    iget-object v1, p0, Lcom/adcolony/sdk/x;->c:[D

    aput-wide p1, v1, v0

    .line 341
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 346
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adcolony/sdk/x;->d:Z

    .line 348
    return-object p0
.end method

.method c()[F
    .locals 1

    .prologue
    .line 353
    sget-object v0, Lcom/adcolony/sdk/x;->a:[F

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/x;->a([F)[F

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/16 v4, 0x20

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    iget-object v1, p0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 371
    iget-object v1, p0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v2, 0x1

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 373
    iget-object v1, p0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v2, 0x2

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 375
    iget-object v1, p0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v2, 0x3

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 377
    iget-object v1, p0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v2, 0x4

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 379
    iget-object v1, p0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v2, 0x5

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 381
    iget-object v1, p0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v2, 0x6

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 383
    iget-object v1, p0, Lcom/adcolony/sdk/x;->c:[D

    const/4 v2, 0x7

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 385
    iget-object v1, p0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v2, 0x8

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 387
    iget-object v1, p0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v2, 0x9

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 389
    iget-object v1, p0, Lcom/adcolony/sdk/x;->c:[D

    aget-wide v2, v1, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 391
    iget-object v1, p0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v2, 0xb

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 393
    iget-object v1, p0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v2, 0xc

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 395
    iget-object v1, p0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v2, 0xd

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 397
    iget-object v1, p0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v2, 0xe

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 399
    iget-object v1, p0, Lcom/adcolony/sdk/x;->c:[D

    const/16 v2, 0xf

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
