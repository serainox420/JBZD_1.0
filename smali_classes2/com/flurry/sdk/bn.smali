.class public final Lcom/flurry/sdk/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/br;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const-class v0, Lcom/flurry/sdk/bn;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/bn;->a:Ljava/lang/String;

    .line 2119
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2120
    const/4 v1, 0x1

    const-string v2, "mcc"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2121
    const/4 v1, 0x2

    const-string v2, "mnc"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2122
    const/4 v1, 0x4

    const-string v2, "locale"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2123
    const/16 v1, 0x8

    const-string v2, "touchscreen"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2124
    const/16 v1, 0x10

    const-string v2, "keyboard"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2125
    const/16 v1, 0x20

    const-string v2, "keyboardHidden"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2126
    const/16 v1, 0x40

    const-string v2, "navigation"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2127
    const/16 v1, 0x80

    const-string v2, "orientation"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2128
    const/16 v1, 0x100

    const-string v2, "screenLayout"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2129
    const/16 v1, 0x200

    const-string v2, "uiMode"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2130
    const/16 v1, 0x400

    const-string v2, "screenSize"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2131
    const/16 v1, 0x800

    const-string v2, "smallestScreenSize"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 32
    sput-object v0, Lcom/flurry/sdk/bn;->b:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/flurry/sdk/bv;)Z
    .locals 16

    .prologue
    .line 36
    if-nez p2, :cond_1

    .line 37
    const/4 v3, 0x0

    .line 61
    :cond_0
    :goto_0
    return v3

    .line 1046
    :cond_1
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/flurry/sdk/bv;->a:Ljava/lang/String;

    .line 41
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    const/4 v3, 0x0

    goto :goto_0

    .line 1062
    :cond_2
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/flurry/sdk/bv;->e:Ljava/util/List;

    .line 46
    if-nez v2, :cond_3

    .line 47
    const/4 v3, 0x0

    goto :goto_0

    .line 50
    :cond_3
    const/4 v1, 0x1

    .line 51
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 52
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 53
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v3, v1

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    .line 1066
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v7, :cond_4

    .line 1067
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v1, :cond_4

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1068
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1069
    :cond_4
    const/4 v5, 0x0

    .line 54
    :cond_5
    :goto_2
    if-nez v5, :cond_a

    .line 55
    const/4 v1, 0x0

    :goto_3
    move v3, v1

    .line 59
    goto :goto_1

    .line 1072
    :cond_6
    new-instance v2, Landroid/content/ComponentName;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v8, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v2}, Lcom/flurry/sdk/fe;->a(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 1074
    if-nez v2, :cond_7

    .line 1075
    sget-object v2, Lcom/flurry/sdk/bn;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": package=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\": AndroidManifest.xml should include activity node with android:name=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    const/4 v5, 0x0

    goto :goto_2

    .line 1080
    :cond_7
    const/4 v4, 0x3

    sget-object v5, Lcom/flurry/sdk/bn;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": package=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\": AndroidManifest.xml has activity node with android:name=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v5, v10}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1085
    const/4 v4, 0x1

    .line 1086
    iget v10, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 1087
    if-eqz v10, :cond_b

    .line 1088
    invoke-static {v2}, Lcom/flurry/sdk/fe;->a(Landroid/content/pm/ActivityInfo;)I

    move-result v11

    .line 1139
    sget-object v12, Lcom/flurry/sdk/bn;->b:Landroid/util/SparseArray;

    .line 1090
    const/4 v2, 0x0

    move v5, v4

    move v4, v2

    :goto_4
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v4, v2, :cond_5

    .line 1091
    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1092
    and-int v13, v2, v10

    if-eqz v13, :cond_8

    .line 1093
    and-int/2addr v2, v11

    if-nez v2, :cond_9

    .line 1094
    sget-object v5, Lcom/flurry/sdk/bn;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, ": package=\""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, "\": AndroidManifest.xml activity node with android:name=\""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v13, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, "\" should include android:configChanges value=\""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1098
    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, "\""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1094
    invoke-static {v5, v2}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    const/4 v5, 0x0

    .line 1090
    :cond_8
    :goto_5
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_4

    .line 1103
    :cond_9
    const/4 v13, 0x3

    sget-object v14, Lcom/flurry/sdk/bn;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, ": package=\""

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, "\": AndroidManifest.xml activity node with android:name=\""

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, "\" has android:configChanges value=\""

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1108
    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, "\""

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1103
    invoke-static {v13, v14, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    move v1, v3

    goto/16 :goto_3

    :cond_b
    move v5, v4

    goto/16 :goto_2
.end method
