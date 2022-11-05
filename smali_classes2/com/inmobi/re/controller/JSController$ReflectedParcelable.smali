.class public Lcom/inmobi/re/controller/JSController$ReflectedParcelable;
.super Ljava/lang/Object;
.source "JSController.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/re/controller/JSController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReflectedParcelable"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 499
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 503
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 504
    aget-object v2, v1, v0

    .line 506
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 508
    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 509
    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    .line 510
    const-string v4, "class com.mraid.NavigationStringEnum"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 511
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inmobi/re/controller/util/NavigationStringEnum;->fromString(Ljava/lang/String;)Lcom/inmobi/re/controller/util/NavigationStringEnum;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 503
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 513
    :cond_1
    const-string v4, "class com.mraid.TransitionStringEnum"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 514
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inmobi/re/controller/util/TransitionStringEnum;->fromString(Ljava/lang/String;)Lcom/inmobi/re/controller/util/TransitionStringEnum;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 525
    :catch_0
    move-exception v0

    .line 527
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 533
    :cond_2
    :goto_2
    return-void

    .line 518
    :cond_3
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 519
    instance-of v3, v3, Landroid/os/Parcelable$Creator;

    if-nez v3, :cond_0

    .line 520
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 528
    :catch_1
    move-exception v0

    .line 530
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 487
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    .line 542
    .line 543
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 544
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 546
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    array-length v0, v2

    if-ge v1, v0, :cond_2

    .line 547
    aget-object v0, v2, v1

    .line 548
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 550
    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 551
    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    .line 552
    const-string v4, "class com.mraid.NavigationStringEnum"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 553
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/controller/util/NavigationStringEnum;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/NavigationStringEnum;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 546
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 555
    :cond_1
    const-string v4, "class com.mraid.TransitionStringEnum"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 556
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/controller/util/TransitionStringEnum;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/TransitionStringEnum;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 566
    :catch_0
    move-exception v0

    .line 568
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 574
    :cond_2
    :goto_2
    return-void

    .line 560
    :cond_3
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 561
    instance-of v3, v0, Landroid/os/Parcelable$Creator;

    if-nez v3, :cond_0

    .line 562
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 569
    :catch_1
    move-exception v0

    .line 571
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2
.end method
