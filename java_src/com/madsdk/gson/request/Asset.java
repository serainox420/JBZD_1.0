package com.madsdk.gson.request;
/* loaded from: classes2.dex */
public class Asset {
    public Data data;
    public int id;
    public Image img;
    public String required;
    public Title title;
    public Video video;

    public Asset(int i, String str, Title title) {
        this.id = i;
        this.required = str;
        this.title = title;
    }

    public Asset(int i, String str, Image image) {
        this.id = i;
        this.required = str;
        this.img = image;
    }

    public Asset(int i, String str, Video video) {
        this.id = i;
        this.required = str;
        this.video = video;
    }

    public Asset(int i, String str, Data data) {
        this.id = i;
        this.required = str;
        this.data = data;
    }
}
